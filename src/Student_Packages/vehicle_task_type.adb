-- Author: Peng Yong, China, 2021
-- UID: u5934120

with Ada.Real_Time;              use Ada.Real_Time;
with Exceptions;                 use Exceptions;
with Real_Type;                  use Real_Type;
with Vectors_3D;                 use Vectors_3D;
with Vehicle_Interface;          use Vehicle_Interface;
with Vehicle_Message_Type;       use Vehicle_Message_Type;
with Swarm_Structures_Base;      use Swarm_Structures_Base;
with Ada.Containers;             use Ada.Containers;
with Swarm_Size;                 use Swarm_Size;
with Ada.Containers.Unbounded_Priority_Queues;
with Ada.Containers.Synchronized_Queue_Interfaces;
with Ada.Containers.Indefinite_Hashed_Maps;

package body Vehicle_Task_Type is

   task body Vehicle_Task is

      type Boxes_contains_two is array (Positive range <>)
        of Inter_Vehicle_Messages;                                          -- Boxes
      Vehicle_No                     : Positive;                            -- Vehicle_No of corresponding drone
      Message_from_other_vehicles    : Inter_Vehicle_Messages;              -- The message received by the drone(not useful if it is outdated)
      Destination                    : Vector_3D;                           -- Record the position of energy globe
      Boxes                          : Boxes_contains_two (1 .. 2);         -- Boxes to contain two messages
      V_Globe                        : Vector_3D;                           -- velocity for energy globe
      V_From_updating                : Boolean := False;                    -- boolean check for receiveing
      V_From_Detecting               : Boolean := False;                    -- boolean check for energy globe
      Number_Of_globe                : Integer := Integer'Invalid_Value;    -- number of globe
      Newest_time_For_message        : Time    := Clock;                    -- record the time that has the newest time

      Near_Full        :   constant Vehicle_Charges := 0.95 * Full_Charge;  -- nearly full charged
      Parameter_Low    :   constant Real := 0.003;                          -- parameter for low
      Parameter_High   :   constant Real := 0.005;                          -- parameter for high
      Parameter_High_H :   constant Real := 0.05;                           -- parameter for high
      Move_But_Not_Sos :   constant Vehicle_Charges := 0.85;                -- constant that will be used below
      Throttle_mid_EF  :   constant Throttle_T := 0.4;
      Throttle_low     :   constant Throttle_T := 0.2;

      ------------------------------------
      ----- Ordered Set for stage 4 ------
      ------------------------------------

      use Vehicle_Sets;

      Set_Agreement_Alive : Vehicle_Sets.Set;

      ------------------------------------
      ------- function for stage 4 -------
      ------------------------------------

      -- function to find the index of current vehicle in the ordered set

      function Pos_Of_vehicles_in_Set (No : Positive) return Boolean is
         Pos : Positive := Positive'First;
      begin
         for value in Set_Agreement_Alive.Iterate loop
            exit when Element (value) = No;
            Pos := Positive'Succ (Pos);
         end loop;
         return Pos > Target_No_of_Elements;
      end Pos_Of_vehicles_in_Set;

      ----------------------------------------------------------------------------------------------
      ------- Hashmap and PriorityQueue to find the vehicle that needs to charge from local --------
      ----------------------------------------------------------------------------------------------

      ------------------------
      ---- PriorityQueue -----
      ------------------------

        type Vechicle_energy is record
           Priority : Vehicle_Charges;  -- use the energy level as priority.
           Vehicle_Number : Positive;   -- this is vehicle No.
        end record;

        function Get_Priority (Element : Vechicle_energy) return Vehicle_Charges is (Element.Priority);

        -- the function is defined here is used to let the smallest vehicle with smaller energy dequeue first.
        function Before (Left, Right : Vehicle_Charges) return Boolean is (Left < Right);

        -- the defined record is vehicle_energy_Interface
        package Vechicle_energy_Interface is new Synchronized_Queue_Interfaces (Element_Type => Vechicle_energy);

        package Energy_Priority_Queues is new Unbounded_Priority_Queues
        (Queue_Interfaces => Vechicle_energy_Interface, Queue_Priority => Vehicle_Charges);

        use Energy_Priority_Queues;

        Priority_Queue_energy : Queue;

      ------------------------------------------
      -------- Hashmap for stage 2 and 3 -------
      ------------------------------------------

      function Hash_Func_For_Vehicles_No (id : Positive) return Hash_Type is (Hash_Type (id));

      function Equivalent_Vehicle_No (Left, Right : Positive) return Boolean is (Left = Right);

      package Vehicle_Hash is new
          Ada.Containers.Indefinite_Hashed_Maps (
                                                Key_Type => Positive,
                                                Element_Type => Vehicle_Charges,
                                                Hash => Hash_Func_For_Vehicles_No,
                                                Equivalent_Keys => Equivalent_Vehicle_No);
      use Vehicle_Hash;

      HashMap_vehicle : Vehicle_Hash.Map;

   begin

      -- You need to react to this call and provide your task_id.
      -- You can e.g. employ the assigned vehicle number (Vehicle_No)
      -- in communications with other vehicles.

      accept Identify (Set_Vehicle_No : Positive; Local_Task_Id : out Task_Id) do
         Vehicle_No      := Set_Vehicle_No;
         Local_Task_Id   := Current_Task;
      end Identify;

      -- Replace the rest of this task with your own code.
      -- Maybe synchronizing on an external event clock like "Wait_For_Next_Physics_Update",
      -- yet you can synchronize on e.g. the real-time clock as well.

      -- Without control this vehicle will go for its natural swarming instinct.

      select

         Flight_Termination.Stop;

      then abort

         Outer_task_loop : loop

            Wait_For_Next_Physics_Update;

            -----------------------------------------------------------------------------------------
            ------------------------------ part of stage 4 code -------------------------------------
            -----------------------------------------------------------------------------------------

            Set_Agreement_Alive.Exclude (Vehicle_No);
            Set_Agreement_Alive.Insert (Vehicle_No);

            -----------------------------------------------------------------------------------------
            ----------------- receive messages from other vehicles in the code below ----------------
            -----------------------------------------------------------------------------------------

            while Messages_Waiting loop

               Receive (Message_from_other_vehicles);   -- receive the messages from other vehicles.

               if Message_from_other_vehicles.Global_Time_When_Message_Sent > Newest_time_For_message then
                  Newest_time_For_message := Message_from_other_vehicles.Global_Time_When_Message_Sent;
                  Destination := Message_from_other_vehicles.Energy_Globe_Position;
                  V_Globe := Message_from_other_vehicles.Energy_Globe_Velocity;
                  V_From_updating := True;
               end if;

               --Set_Agreement_Alive.Union (Message_from_other_vehicles.Agreement_Alive);

               -- exclude will delete the key out if it is ready in
               HashMap_vehicle.Exclude (Key => Message_from_other_vehicles.ID_Of_Sender);
               HashMap_vehicle.Insert (Message_from_other_vehicles.ID_Of_Sender, Message_from_other_vehicles.Energy_of_this_vehicle);
            end loop;

            HashMap_vehicle.Exclude (Key => Vehicle_No);
            HashMap_vehicle.Insert (Vehicle_No, Current_Charge);

            for C in HashMap_vehicle.Iterate loop
                 Priority_Queue_energy.Enqueue (New_Item => (Priority => (HashMap_vehicle (C)), Vehicle_Number => (Key (C))));
            end loop;

            -----------------------------------------------------------------------------------------
            ---------------- Judge the information about energy globe in the code -------------------
            ------------ send the message out once we get the position of energy globe --------------
            -----------------------------------------------------------------------------------------

            declare

               All_globe : constant Energy_Globes := Energy_Globes_Around;
               Energy_Globe_Chosen : Energy_Globe;

            begin

               Number_Of_globe := All_globe'Length;

               -- in stage 2, we have only one energy globe
               if Number_Of_globe = 1 then
                  Energy_Globe_Chosen := All_globe (1);
                  Destination := Energy_Globe_Chosen.Position;
                  V_Globe := Energy_Globe_Chosen.Velocity;
                  V_From_Detecting := True;

               -- in stage 3, we have (>2) globe, choose the nearest one
               elsif Number_Of_globe > 1 then
                  Energy_Globe_Chosen := All_globe (1);
                  for m in 2 .. Number_Of_globe loop
                     if abs (Position - Energy_Globe_Chosen.Position) > abs (Position - All_globe (m).Position) then
                        Energy_Globe_Chosen := All_globe (m);
                        Destination := Energy_Globe_Chosen.Position;
                        V_Globe := Energy_Globe_Chosen.Velocity;
                        V_From_Detecting := True;
                     end if;
                  end loop;
               end if;

               Boxes (1) := (ID_Of_Sender => Vehicle_No,
                             Energy_Globe_Position => Destination,
                             Global_Time_When_Message_Sent  => Clock,
                             Energy_of_this_vehicle  => Current_Charge,
                             Energy_Globe_Velocity => V_Globe--,
                             --Agreement_Alive => Set_Agreement_Alive
                         );

               if Boxes (2).Global_Time_When_Message_Sent >= Boxes (1).Global_Time_When_Message_Sent or else
                 Boxes (2).Global_Time_When_Message_Sent < Boxes (1).Global_Time_When_Message_Sent
               then
                  Send (Boxes (1));
               end if;
            end;

            -----------------------------------------------------------------------------------------
            ----------------------------- implementation of stage 4 ---------------------------------
            -----------------------------------------------------------------------------------------

            if Pos_Of_vehicles_in_Set (Vehicle_No) and
            then Target_No_of_Elements < Positive (Set_Agreement_Alive.Length)
            then
               Set_Throttle (Idle_Throttle); -- set throttle idle
               exit Outer_task_loop;         -- let it die
            end if;

            -----------------------------------------------------------------------------------------
            ------------- set Throttle for motion in the code below for stage 2 and 3 ---------------
            ------------- To use it, choose one of throttle code for specific stage -----------------
            -----------------------------------------------------------------------------------------

            -- The code is motion code for stage2 and stage3.
            -- The parameter setting is adjusted to avoid congestion because it may be the case that
            -- lots of spacecraft are charging at the same time. Thanks to tutor Robert Jeffrey for
            -- discussion. The non-linear idea is from tutor Jon Connor.

            declare

               Vehicle_In_Priority_Queue : Vechicle_energy;
               Local_minimum : Vehicle_Charges;

            begin
               -- select the smallest from the priority_queue
               Priority_Queue_energy.Dequeue (Element => Vehicle_In_Priority_Queue);
               Local_minimum := Vehicle_In_Priority_Queue.Priority;

            ------------------------------------
            ------- throttle for stage 2 -------
            ------------------------------------

               if Current_Charge <= 0.35 then
                  Set_Throttle (Full_Throttle);
               elsif Current_Charge <= 0.55 then
                  Set_Throttle (Full_Throttle - (Real (Current_Charge) - 0.32) * (Real (Current_Charge) - 0.32) * 5.0);
               elsif Current_Charge <= 0.68 and then Current_Charge <= Local_minimum then
                  Set_Throttle (0.30 + (Real (Current_Charge) - 0.50) * 2.0);
                  Set_Destination (Destination + V_Globe * Parameter_Low);
               elsif Current_Charge <= 0.68 and then Current_Charge > Local_minimum then
                  Set_Throttle (0.25 + (Real (Current_Charge) - 0.50) * 2.0);
               elsif Current_Charge <= Move_But_Not_Sos and then Current_Charge <= Local_minimum then
                  Set_Throttle (Throttle_mid_EF - Real (Current_Charge) * Parameter_High_H);
               elsif Current_Charge <= Move_But_Not_Sos and then Current_Charge > Local_minimum then
                  Set_Throttle (Throttle_low + Real (Current_Charge) * Parameter_High_H);
               end if;

            ------------------------------------
            --- End for throttle for stage 2 ---
            ------------------------------------

            ------------------------------------
            ------- throttle for stage 3 -------
            ------------------------------------

--                 if Current_Charge <= 0.55 then -- 200 to 190 in 10
--                    Set_Throttle (Full_Throttle);
--                 elsif Current_Charge <= 0.60 then
--                    Set_Throttle (Full_Throttle - (Real (Current_Charge) - 0.45) * (Real (Current_Charge) - 0.45) * 8.9);
--                 elsif Current_Charge <= 0.70 and then Current_Charge <= Local_minimum then
--                    Set_Throttle (0.85 - (Real (Current_Charge) - 0.50) * 2.50);
--                 elsif Current_Charge <= 0.70 and then Current_Charge > Local_minimum then
--                    Set_Throttle (0.80 - (Real (Current_Charge) - 0.50) * 2.50);
--                 elsif Current_Charge <= Move_But_Not_Sos and then Current_Charge <= Local_minimum then
--                    Set_Throttle (Throttle_mid_EF - Real (Current_Charge) * Parameter_High_H);
--                 elsif Current_Charge <= Move_But_Not_Sos and then Current_Charge > Local_minimum then
--                    Set_Throttle (Throttle_low + Real (Current_Charge) * Parameter_High_H);
--                 end if;

            ------------------------------------
            --- End for throttle for stage 3 ---
            ------------------------------------

               -- set the destination below

               if V_From_updating then
                  Set_Destination (Destination + V_Globe * Parameter_Low);
               elsif V_From_Detecting and (not V_From_updating) then
                  Set_Destination (Destination + V_Globe * Parameter_High);
               end if;

            end;

            V_From_updating  := False;
            V_From_Detecting := False;

            -----------------------------------------------------------------------------------------
            -------------------------- Add full charged message to box ------------------------------
            -----------------------------------------------------------------------------------------

            Boxes (2) := (ID_Of_Sender => Vehicle_No,
                          Energy_Globe_Position => Destination,
                          Global_Time_When_Message_Sent  => Clock,
                          Energy_of_this_vehicle  => Current_Charge,
                          Energy_Globe_Velocity => V_Globe--,
                          --Agreement_Alive => Set_Agreement_Alive
                         );

            -----------------------------------------------------------------------------------------
            ----------------- After finished, clear up PriorityQueue --------------------------------
            -----------------------------------------------------------------------------------------

            declare
               Clear_Element_In_Priority_Queue : Vechicle_energy;
            begin
               while Priority_Queue_energy.Current_Use > 0 loop
                  Priority_Queue_energy.Dequeue (Element => Clear_Element_In_Priority_Queue);
               end loop;
            end;

            -------------------------------------------------------------------------------------------------------------
            ---------- send the messages out when it is charged full and know the position of energy globe  -------------
            -------------------------------------------------------------------------------------------------------------

            declare
               Box_Two_Energy : Vehicle_Charges;
            begin

               Box_Two_Energy := Boxes (2).Energy_of_this_vehicle;

               if  (not V_From_Detecting) and then (not V_From_updating)
                 and then Near_Full <= Box_Two_Energy
               then
                  Send (Boxes (2));
                  Set_Throttle (Throttle_low);
               end if;
            end;

         end loop Outer_task_loop;

      end select;

   exception
      when E : others => Show_Exception (E);

   end Vehicle_Task;

end Vehicle_Task_Type;
