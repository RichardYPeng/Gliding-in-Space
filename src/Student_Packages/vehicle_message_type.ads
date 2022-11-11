-- Author: Peng Yong, China, 2021
-- UID: u5934120

-- Suggestions for packages which might be useful:

with Ada.Real_Time;         use Ada.Real_Time;
--with Swarm_Size;            use Swarm_Size;
with Vectors_3D;            use Vectors_3D;
with Swarm_Structures_Base; use Swarm_Structures_Base;
with Ada.Containers;        use Ada.Containers;
with Ada.Containers.Ordered_Sets;

package Vehicle_Message_Type is

   package Vehicle_Sets is new Ada.Containers.Ordered_Sets
     (Element_Type => Integer);

   use Vehicle_Sets;

   type Inter_Vehicle_Messages is

      record
         Global_Time_When_Message_Sent : Time;               -- the time of message sent
         ID_Of_Sender                  : Positive;           -- ID of sender
         Energy_Globe_Position         : Vector_3D;          -- energy globe position
         Energy_of_this_vehicle        : Vehicle_Charges;    -- energy of this vehicle
         Energy_Globe_Velocity         : Velocities;         -- the velocity for energy globe
         --Agreement_Alive               : Vehicle_Sets.Set;   -- agreement on alive spacecraft
      end record;

end Vehicle_Message_Type;
