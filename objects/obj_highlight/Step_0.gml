/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34616E0A
/// @DnDArgument : "code" "/// Move Highlight and create Rocks$(13_10)$(13_10)//Snap Highlight to mouse$(13_10)x = mouse_x;$(13_10)y = mouse_y;$(13_10)$(13_10)//Snap hightlight to grid$(13_10)move_snap(16, 16);$(13_10)$(13_10)//Assign position to variables for Rock to use$(13_10)global.highlightX = x;$(13_10)global.highlightY = y;$(13_10)$(13_10)//Limit and create Rocks$(13_10)if(global.rockLimit == 0){$(13_10)	if (mouse_check_button(mb_left)){$(13_10)		instance_create_layer(x, y, "Rocks", obj_tower); $(13_10)		global.rockLimit = 1;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	if (mouse_check_button_released(mb_left)){$(13_10)		global.rockLimit = 0;$(13_10)	}$(13_10)}"

{
	/// Move Highlight and create Rocks

//Snap Highlight to mouse
x = mouse_x;
y = mouse_y;

//Snap hightlight to grid
move_snap(16, 16);

//Assign position to variables for Rock to use
global.highlightX = x;
global.highlightY = y;

//Limit and create Rocks
if(global.rockLimit == 0){
	if (mouse_check_button(mb_left)){
		instance_create_layer(x, y, "Rocks", obj_tower); 
		global.rockLimit = 1;
	}
}
else {
	if (mouse_check_button_released(mb_left)){
		global.rockLimit = 0;
	}
}
}

