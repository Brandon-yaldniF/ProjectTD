/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1C35609B
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"

{
	x = mouse_x;
	y = mouse_y;
}

/// @DnDAction : YoYo Games.Movement.Snap_Position
/// @DnDVersion : 1
/// @DnDHash : 03E517BE
/// @DnDArgument : "xsnap" "10"
/// @DnDArgument : "ysnap" "10"

{
	move_snap(10, 10);
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6C249DCA
/// @DnDInput : 2
/// @DnDArgument : "value" "x"
/// @DnDArgument : "value_1" "y"
/// @DnDArgument : "var" "highlightX"
/// @DnDArgument : "var_1" "highlightY"
global.highlightX = x;
global.highlightY = y;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F770C3C
/// @DnDArgument : "var" "global.rockLimit"
if(global.rockLimit == 0)
{
	

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 3524150A
	/// @DnDParent : 3F770C3C
	var l3524150A_0;
	l3524150A_0 = mouse_check_button(mb_left);
	if (l3524150A_0)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1167FDF8
			/// @DnDParent : 3524150A
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_rock"
			/// @DnDArgument : "layer" ""Rocks""
			/// @DnDSaveInfo : "objectid" "7ae7a8df-850d-45a7-b3b1-cfe8f059efa7"
			instance_create_layer(x, y, "Rocks", obj_rock); 
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70BE5301
			/// @DnDParent : 3524150A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "global.rockLimit"
			global.rockLimit = 1;
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5E88E42A
else
{
	

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 5FC4A46A
	/// @DnDParent : 5E88E42A
	var l5FC4A46A_0;
	l5FC4A46A_0 = mouse_check_button_released(mb_left);
	if (l5FC4A46A_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D270675
			/// @DnDParent : 5FC4A46A
			/// @DnDArgument : "var" "global.rockLimit"
			global.rockLimit = 0;
			
	
	
	}


}

