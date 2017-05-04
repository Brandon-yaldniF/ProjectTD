/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D94D6EA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "isHighlighted"
isHighlighted = 1;


/// @DnDAction : YoYo Games.Movement.Snap_Position
/// @DnDVersion : 1
/// @DnDHash : 0812D8B1
/// @DnDApplyTo : 7b158836-37ba-4872-a17a-1e768c8ad3ea
/// @DnDArgument : "xsnap" "10"
/// @DnDArgument : "ysnap" "10"
with(obj_highlight)
{
	move_snap(10, 10);
}

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3E45F139
/// @DnDArgument : "object" "obj_highlight"
/// @DnDSaveInfo : "object" "7b158836-37ba-4872-a17a-1e768c8ad3ea"

{
	variable = instance_number(obj_highlight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49313020
/// @DnDArgument : "var" "isHighlighted"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(isHighlighted >= 1)
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4ACE2EA7
	/// @DnDParent : 49313020
	instance_destroy();


}

