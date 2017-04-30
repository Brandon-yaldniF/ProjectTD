/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 51B95EAD
/// @DnDArgument : "var" "onHighlight"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_highlight"
/// @DnDSaveInfo : "object" "7b158836-37ba-4872-a17a-1e768c8ad3ea"

{
	var onHighlight = instance_number(obj_highlight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7717D848
/// @DnDArgument : "var" "onHighlight"
if(onHighlight == 0)
{
	
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3FBEC4AE
else
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C2031B4
	/// @DnDApplyTo : 7b158836-37ba-4872-a17a-1e768c8ad3ea
	/// @DnDParent : 3FBEC4AE
	with(obj_highlight) instance_destroy();


}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 135F294B
/// @DnDArgument : "xpos" "mouse_x"
/// @DnDArgument : "ypos" "mouse_y"
/// @DnDArgument : "objectid" "obj_highlight"
/// @DnDSaveInfo : "objectid" "7b158836-37ba-4872-a17a-1e768c8ad3ea"
instance_create_layer(mouse_x, mouse_y, "Instances", obj_highlight); 

