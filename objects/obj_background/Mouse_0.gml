/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F9AE4FB
/// @DnDApplyTo : dc679ab5-466c-4946-ae86-e0100fc2fe38
/// @DnDArgument : "var" "place_empty(mouse_x, mouse_y)"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
with(obj_background) var l5F9AE4FB_0 = place_empty(mouse_x, mouse_y) >= 1;
if(l5F9AE4FB_0)
{
	

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 770AB4AB
	/// @DnDParent : 5F9AE4FB
	/// @DnDArgument : "xpos" "mouse_x"
	/// @DnDArgument : "ypos" "mouse_y"
	/// @DnDArgument : "objectid" "obj_rock"
	/// @DnDSaveInfo : "objectid" "7ae7a8df-850d-45a7-b3b1-cfe8f059efa7"
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_rock); 

	/// @DnDAction : YoYo Games.Movement.Snap_Position
	/// @DnDVersion : 1
	/// @DnDHash : 5DC73D68
	/// @DnDApplyTo : 7ae7a8df-850d-45a7-b3b1-cfe8f059efa7
	/// @DnDParent : 5F9AE4FB
	/// @DnDArgument : "xsnap" "10"
	/// @DnDArgument : "ysnap" "10"
	with(obj_rock)
	{
		move_snap(10, 10);
	}


}

