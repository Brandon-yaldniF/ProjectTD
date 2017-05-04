/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7454A99E
/// @DnDArgument : "var" "isHighlighted"
global.isHighlighted = 0;


/// @DnDAction : YoYo Games.Movement.Snap_Position
/// @DnDVersion : 1
/// @DnDHash : 268C1B9A
/// @DnDApplyTo : 7b158836-37ba-4872-a17a-1e768c8ad3ea
/// @DnDArgument : "xsnap" "10"
/// @DnDArgument : "ysnap" "10"
with(obj_highlight)
{
	move_snap(10, 10);
}

