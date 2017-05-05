/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2777FDCE
/// @DnDArgument : "code" "/// Check for tower collison$(13_10)if(place_meeting(global.highlightX,global.highlightY,obj_tower) > 0 || instance_place(global.highlightX,global.highlightY,path_0) > 0){$(13_10)	instance_destroy();$(13_10)}"

{
	/// Check for tower collison
if(place_meeting(global.highlightX,global.highlightY,obj_tower) > 0 || instance_place(global.highlightX,global.highlightY,path_0) > 0){
	instance_destroy();
}
}

