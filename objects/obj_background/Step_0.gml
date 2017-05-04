/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 22C33D7F
/// @DnDArgument : "xpos" "mouse_x"
/// @DnDArgument : "ypos" "mouse_y"
/// @DnDArgument : "objectid" "obj_highlight"
/// @DnDArgument : "layer" ""Highlights""
/// @DnDSaveInfo : "objectid" "7b158836-37ba-4872-a17a-1e768c8ad3ea"
instance_create_layer(mouse_x, mouse_y, "Highlights", obj_highlight); 

/// @DnDAction : YoYo Games.Movement.Snap_Position
/// @DnDVersion : 1
/// @DnDHash : 605283FB
/// @DnDApplyTo : 7b158836-37ba-4872-a17a-1e768c8ad3ea
/// @DnDArgument : "xsnap" "10"
/// @DnDArgument : "ysnap" "10"
with(obj_highlight)
{
	move_snap(10, 10);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3524150A
var l3524150A_0;
l3524150A_0 = mouse_check_button(mb_left);
if (l3524150A_0)
{
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 60AD73D0
	/// @DnDInput : 2
	/// @DnDParent : 3524150A
	/// @DnDArgument : "var" "createRock"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "place_empty"
	/// @DnDArgument : "arg" "mouse_x"
	/// @DnDArgument : "arg_1" "mouse_y"
	var createRock = place_empty(mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71D70B29
	/// @DnDParent : 3524150A
	/// @DnDArgument : "var" "createRock"
	/// @DnDArgument : "value" "1"
	if(createRock == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1167FDF8
			/// @DnDParent : 71D70B29
			/// @DnDArgument : "xpos" "mouse_x"
			/// @DnDArgument : "ypos" "mouse_y"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDArgument : "layer" ""Rocks""
			/// @DnDSaveInfo : "objectid" "7ae7a8df-850d-45a7-b3b1-cfe8f059efa7"
			instance_create_layer(mouse_x, mouse_y, "Rocks", obj_rock); 
	
			/// @DnDAction : YoYo Games.Movement.Snap_Position
			/// @DnDVersion : 1
			/// @DnDHash : 117FFEAB
			/// @DnDParent : 71D70B29
			/// @DnDArgument : "xsnap" "10"
			/// @DnDArgument : "ysnap" "10"
			
			{
				move_snap(10, 10);
			}
	
	
	}


}

