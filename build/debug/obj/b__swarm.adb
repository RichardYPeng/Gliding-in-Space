pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__swarm.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__swarm.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__soft_links__initialize_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "ada__containers_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__io_exceptions_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "ada__numerics_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__strings_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "interfaces__c_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "interfaces__c__strings_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__os_lib_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__tags_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "ada__streams_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "system__file_control_block_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__finalization_root_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "ada__finalization_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__file_io_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "ada__streams__stream_io_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "system__storage_pools_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "system__finalization_masters_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "system__storage_pools__subpools_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__calendar_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "ada__calendar__delays_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "ada__real_time_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__text_io_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "system__assertions_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "ada__strings__maps_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "ada__strings__maps__constants_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "ada__strings__unbounded_E");
   E420 : Short_Integer; pragma Import (Ada, E420, "system__interrupt_management__operations_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "system__pool_global_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "system__random_seed_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__tasking__initialization_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__tasking__protected_objects_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__tasking__protected_objects__entries_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__tasking__queuing_E");
   E414 : Short_Integer; pragma Import (Ada, E414, "system__tasking__stages_E");
   E418 : Short_Integer; pragma Import (Ada, E418, "system__tasking__async_delays_E");
   E404 : Short_Integer; pragma Import (Ada, E404, "barrier_type_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "bzip2_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "exceptions_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "generic_protected_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "gl_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "gl__buffer_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "gl__io_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "gl__materials_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "gl__math_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "gl__geometry_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "gl__frustums_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "glu_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "gl__errors_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "gl__textures_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "gl__buffer__texture_coords_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "gl__buffer__texture_coords_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "gl__skins_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "gl__skinned_geometry_E");
   E295 : Short_Integer; pragma Import (Ada, E295, "glut_E");
   E293 : Short_Integer; pragma Import (Ada, E293, "glut_2d_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "generic_sliding_statistics_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "graphics_framerates_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "matrices_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "quaternions_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "screenshots_E");
   E425 : Short_Integer; pragma Import (Ada, E425, "vectors_2d_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "vectors_3d_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "rotations_E");
   E422 : Short_Integer; pragma Import (Ada, E422, "vectors_3d_lf_E");
   E356 : Short_Integer; pragma Import (Ada, E356, "vectors_4d_E");
   E426 : Short_Integer; pragma Import (Ada, E426, "vectors_2d_i_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "vectors_2d_n_E");
   E427 : Short_Integer; pragma Import (Ada, E427, "vectors_2d_p_E");
   E424 : Short_Integer; pragma Import (Ada, E424, "vectors_conversions_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "zip_streams_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "zip_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "zip__headers_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "zip__crc_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "unzip_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "unzip__decompress_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "unzip__decompress__huffman_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "unzip__streams_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "globe_3d_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "globe_3d__math_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "globe_3d__options_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "globe_3d__portals_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "globe_3d__textures_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "a319_p_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "arrow_p_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "box_p_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "cube_p_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "dreadnought_p_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "duck_p_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "globe_3d__software_anti_aliasing_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "glut__devices_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "game_control_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "actors_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "glut__windows_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "graphics_structures_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "graphics_configuration_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "icosahedron_p_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "keyboard_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "lissajous_p_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "plane_p_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "sierpinski_p_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "skotknot_p_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "spaceship_p_E");
   E353 : Short_Integer; pragma Import (Ada, E353, "sphere_p_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "swarm_structures_base_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "swarm_configurations_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "swarm_configuration_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "vehic001_p_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "vehic002_p_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "vehicle_message_type_E");
   E416 : Short_Integer; pragma Import (Ada, E416, "vehicle_interface_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "vehicle_task_type_E");
   E402 : Short_Integer; pragma Import (Ada, E402, "swarm_structures_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "swarm_data_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "swarm_control_E");
   E429 : Short_Integer; pragma Import (Ada, E429, "swarm_control_concurrent_generic_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "x29_p_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "models_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "graphics_data_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "graphics_setup_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "graphics_opengl_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "callback_procedures_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E416 := E416 - 1;
      E399 := E399 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "swarm_control__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "swarm_data__finalize_spec");
      begin
         E400 := E400 - 1;
         F2;
      end;
      E402 := E402 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "swarm_structures__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "vehicle_interface__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "vehicle_message_type__finalize_spec");
      begin
         E407 := E407 - 1;
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "swarm_structures_base__finalize_spec");
      begin
         E389 := E389 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "graphics_structures__finalize_spec");
      begin
         E303 := E303 - 1;
         F7;
      end;
      E374 := E374 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "glut__windows__finalize_spec");
      begin
         F8;
      end;
      E173 := E173 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "globe_3d__textures__finalize_body");
      begin
         E262 := E262 - 1;
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "globe_3d__finalize_spec");
      begin
         F10;
      end;
      E287 := E287 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "unzip__streams__finalize_spec");
      begin
         F11;
      end;
      E283 := E283 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "zip_streams__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "glut__finalize_body");
      begin
         E295 := E295 - 1;
         F13;
      end;
      E194 := E194 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gl__skins__finalize_spec");
      begin
         F14;
      end;
      E244 := E244 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gl__textures__finalize_spec");
      begin
         F15;
      end;
      E219 := E219 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gl__geometry__finalize_spec");
      begin
         F16;
      end;
      E211 := E211 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gl__buffer__finalize_spec");
      begin
         F17;
      end;
      E404 := E404 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "barrier_type__finalize_spec");
      begin
         F18;
      end;
      E134 := E134 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F19;
      end;
      E197 := E197 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "system__pool_global__finalize_spec");
      begin
         F20;
      end;
      E221 := E221 - 1;
      declare
         procedure F21;
         pragma Import (Ada, F21, "ada__strings__unbounded__finalize_spec");
      begin
         F21;
      end;
      E144 := E144 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "ada__text_io__finalize_spec");
      begin
         F22;
      end;
      E203 := E203 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "system__storage_pools__subpools__finalize_spec");
      begin
         F23;
      end;
      E205 := E205 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "system__finalization_masters__finalize_spec");
      begin
         F24;
      end;
      E250 := E250 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "ada__streams__stream_io__finalize_spec");
      begin
         F25;
      end;
      declare
         procedure F26;
         pragma Import (Ada, F26, "system__file_io__finalize_body");
      begin
         E148 := E148 - 1;
         F26;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, True, False, False, True, True, False, False, 
           True, False, False, True, True, True, True, False, 
           False, True, True, False, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, True, False, True, True, False, 
           True, True, True, True, False, True, True, True, 
           True, False, False, True, False, True, True, False, 
           True, False, False, True, True, True, True, True, 
           True, False, True, False, True, True, True, False, 
           True, True, False, True, True, True, True, False, 
           True, True, False, False, False, True, True, True, 
           True, True, True, False),
         Count => (0, 0, 0, 2, 2, 1, 3, 2, 7, 0),
         Unknown => (False, False, False, False, False, False, True, True, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      System.Scalar_Values.Initialize ('I', 'N');

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E019 := E019 + 1;
      E011 := E011 + 1;
      Ada.Containers'Elab_Spec;
      E184 := E184 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E140 := E140 + 1;
      Ada.Numerics'Elab_Spec;
      E053 := E053 + 1;
      Ada.Strings'Elab_Spec;
      E178 := E178 + 1;
      Interfaces.C'Elab_Spec;
      E066 := E066 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E171 := E171 + 1;
      System.Os_Lib'Elab_Body;
      E150 := E150 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E108 := E108 + 1;
      Ada.Streams'Elab_Spec;
      E139 := E139 + 1;
      System.File_Control_Block'Elab_Spec;
      E153 := E153 + 1;
      System.Finalization_Root'Elab_Spec;
      E142 := E142 + 1;
      Ada.Finalization'Elab_Spec;
      E137 := E137 + 1;
      System.File_Io'Elab_Body;
      E148 := E148 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E250 := E250 + 1;
      System.Storage_Pools'Elab_Spec;
      E201 := E201 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E205 := E205 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E203 := E203 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E064 := E064 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E302 := E302 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E076 := E076 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E144 := E144 + 1;
      System.Assertions'Elab_Spec;
      E162 := E162 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E180 := E180 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E183 := E183 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E221 := E221 + 1;
      System.Interrupt_Management.Operations'Elab_Body;
      E420 := E420 + 1;
      System.Pool_Global'Elab_Spec;
      E197 := E197 + 1;
      System.Random_Seed'Elab_Body;
      E062 := E062 + 1;
      System.Tasking.Initialization'Elab_Body;
      E122 := E122 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E132 := E132 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E134 := E134 + 1;
      System.Tasking.Queuing'Elab_Body;
      E130 := E130 + 1;
      System.Tasking.Stages'Elab_Body;
      E414 := E414 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E418 := E418 + 1;
      Barrier_Type'Elab_Spec;
      E404 := E404 + 1;
      E275 := E275 + 1;
      E116 := E116 + 1;
      E391 := E391 + 1;
      E168 := E168 + 1;
      GL.BUFFER'ELAB_SPEC;
      E211 := E211 + 1;
      GL.IO'ELAB_SPEC;
      GL.IO'ELAB_BODY;
      E246 := E246 + 1;
      E254 := E254 + 1;
      GL.MATH'ELAB_BODY;
      E229 := E229 + 1;
      GL.GEOMETRY'ELAB_SPEC;
      E219 := E219 + 1;
      E289 := E289 + 1;
      E192 := E192 + 1;
      GL.ERRORS'ELAB_SPEC;
      E190 := E190 + 1;
      GL.TEXTURES'ELAB_SPEC;
      GL.TEXTURES'ELAB_BODY;
      E244 := E244 + 1;
      GL.BUFFER.TEXTURE_COORDS'ELAB_SPEC;
      GL.BUFFER.TEXTURE_COORDS'ELAB_BODY;
      E215 := E215 + 1;
      GL.SKINS'ELAB_SPEC;
      GL.SKINS'ELAB_BODY;
      E194 := E194 + 1;
      E291 := E291 + 1;
      GLUT'ELAB_BODY;
      E295 := E295 + 1;
      E293 := E293 + 1;
      E155 := E155 + 1;
      Graphics_Framerates'Elab_Spec;
      Graphics_Framerates'Elab_Body;
      E300 := E300 + 1;
      E307 := E307 + 1;
      Quaternions'Elab_Body;
      E309 := E309 + 1;
      E384 := E384 + 1;
      Vectors_2d'Elab_Spec;
      E425 := E425 + 1;
      Vectors_3d'Elab_Spec;
      E311 := E311 + 1;
      Rotations'Elab_Body;
      E305 := E305 + 1;
      Vectors_3d_Lf'Elab_Spec;
      E422 := E422 + 1;
      Vectors_4d'Elab_Spec;
      E356 := E356 + 1;
      Vectors_2d_I'Elab_Spec;
      E426 := E426 + 1;
      Vectors_2d_N'Elab_Spec;
      E318 := E318 + 1;
      Vectors_2d_P'Elab_Spec;
      E427 := E427 + 1;
      E424 := E424 + 1;
      Zip_Streams'Elab_Spec;
      Zip'Elab_Spec;
      Zip.Headers'Elab_Spec;
      E281 := E281 + 1;
      Zip'Elab_Body;
      E279 := E279 + 1;
      Zip_Streams'Elab_Body;
      E283 := E283 + 1;
      E285 := E285 + 1;
      Unzip'Elab_Spec;
      Unzip'Elab_Body;
      E271 := E271 + 1;
      Unzip.Decompress.Huffman'Elab_Spec;
      E277 := E277 + 1;
      E273 := E273 + 1;
      Unzip.Streams'Elab_Spec;
      Unzip.Streams'Elab_Body;
      E287 := E287 + 1;
      GLOBE_3D'ELAB_SPEC;
      GLOBE_3D.MATH'ELAB_BODY;
      E256 := E256 + 1;
      E258 := E258 + 1;
      E260 := E260 + 1;
      GLOBE_3D.TEXTURES'ELAB_SPEC;
      GLOBE_3D.TEXTURES'ELAB_BODY;
      E262 := E262 + 1;
      GLOBE_3D'ELAB_BODY;
      E173 := E173 + 1;
      E325 := E325 + 1;
      E329 := E329 + 1;
      E331 := E331 + 1;
      E333 := E333 + 1;
      Dreadnought_P'Elab_Body;
      E335 := E335 + 1;
      E337 := E337 + 1;
      E380 := E380 + 1;
      GLUT.DEVICES'ELAB_SPEC;
      Game_Control'Elab_Spec;
      E378 := E378 + 1;
      Actors'Elab_Body;
      E376 := E376 + 1;
      GLUT.WINDOWS'ELAB_SPEC;
      GLUT.WINDOWS'ELAB_BODY;
      E374 := E374 + 1;
      E372 := E372 + 1;
      Graphics_Structures'Elab_Spec;
      E303 := E303 + 1;
      Graphics_Configuration'Elab_Spec;
      E166 := E166 + 1;
      E339 := E339 + 1;
      E382 := E382 + 1;
      E341 := E341 + 1;
      E343 := E343 + 1;
      E345 := E345 + 1;
      E349 := E349 + 1;
      E351 := E351 + 1;
      E353 := E353 + 1;
      Swarm_Structures_Base'Elab_Spec;
      E389 := E389 + 1;
      Swarm_Configurations'Elab_Spec;
      E388 := E388 + 1;
      Swarm_Configuration'Elab_Spec;
      E386 := E386 + 1;
      E358 := E358 + 1;
      E360 := E360 + 1;
      Vehicle_Message_Type'Elab_Spec;
      E407 := E407 + 1;
      Vehicle_Interface'Elab_Spec;
      Vehicle_Task_Type'Elab_Body;
      E409 := E409 + 1;
      Swarm_Structures'Elab_Spec;
      E402 := E402 + 1;
      Swarm_Data'Elab_Spec;
      E400 := E400 + 1;
      Swarm_Control'Elab_Spec;
      E399 := E399 + 1;
      E416 := E416 + 1;
      E429 := E429 + 1;
      E362 := E362 + 1;
      Models'Elab_Spec;
      Models'Elab_Body;
      E323 := E323 + 1;
      Graphics_Data'Elab_Spec;
      E321 := E321 + 1;
      E368 := E368 + 1;
      Graphics_Opengl'Elab_Body;
      E364 := E364 + 1;
      Callback_Procedures'Elab_Body;
      E052 := E052 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_swarm");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/barrier_type.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/bzip2.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/exceptions.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/generic_protected.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/generic_realtime_buffer.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-extended.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-buffer.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-io.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-materials.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-math.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-geometry.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-frustums.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/glu.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-errors.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-buffer-general.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-textures.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-buffer-texture_coords.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-skins.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/gl-skinned_geometry.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/glut.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/glut_2d.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/real_type.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/generic_sliding_statistics.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_framerates.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/matrices.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/quaternions.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/screenshots.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_size.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_xd.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_2d.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_3d.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/rotations.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_3d_lf.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_4d.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_xd_i.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_2d_i.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_2d_n.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_2d_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vectors_conversions.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/zip-headers.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/zip.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/zip_streams.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/zip-crc.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/unzip.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/unzip-decompress-huffman.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/unzip-decompress.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/unzip-streams.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-math.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-options.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-portals.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-textures.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/a319_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/arrow_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/box_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/cube_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/dreadnought_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/duck_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-software_anti_aliasing.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/globe_3d-stars_sky.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/game_control.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/actors.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/glut-windows.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/glut-devices.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_structures.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_configuration.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/icosahedron_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/keyboard.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/lissajous_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/plane_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/sierpinski_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/skotknot_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/spaceship_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/sphere_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_structures_base.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_configurations.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_configuration.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vehic001_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vehic002_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vehicle_message_type.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vehicle_task_type.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_structures.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_data.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_control.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/vehicle_interface.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm_control_concurrent_generic.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/x29_p.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/models.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_data.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_setup.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/graphics_opengl.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/callback_procedures.o
   --   /Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/swarm.o
   --   -L/Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/
   --   -L/Users/yongpeng/comp2310/comp2310-assignment-1/build/debug/obj/
   --   -L/users/yongpeng/home/lib/gcc/x86_64-apple-darwin17.7.0/8.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
