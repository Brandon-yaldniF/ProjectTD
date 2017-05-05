/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DDC22EC
/// @DnDArgument : "code" "/// Create highlight and enemy$(13_10)global.rockLimit = 0;$(13_10)$(13_10)instance_create_layer(mouse_x,mouse_y,"Highlights",obj_highlight);$(13_10)instance_create_layer(x,y,"Rocks",obj_enemy);"

{
	/// Create highlight and enemy
global.rockLimit = 0;

instance_create_layer(mouse_x,mouse_y,"Highlights",obj_highlight);
instance_create_layer(x,y,"Rocks",obj_enemy);
}

