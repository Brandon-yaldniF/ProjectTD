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

