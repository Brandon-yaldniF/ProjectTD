/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7717D848
/// @DnDArgument : "var" "global.isHighlighted"
if(global.isHighlighted == 0)
{
	
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 135F294B
/// @DnDArgument : "xpos" "mouse_x"
/// @DnDArgument : "ypos" "mouse_y"
/// @DnDArgument : "objectid" "obj_highlight"
/// @DnDSaveInfo : "objectid" "7b158836-37ba-4872-a17a-1e768c8ad3ea"
instance_create_layer(mouse_x, mouse_y, "Instances", obj_highlight); 

