/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 08DC5E79
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "object" "obj_rock"
/// @DnDSaveInfo : "object" "7ae7a8df-850d-45a7-b3b1-cfe8f059efa7"

{
	var l08DC5E79_0 = mouse_x;
	var l08DC5E79_1 = mouse_y;
	var l08DC5E79_2 = instance_place(l08DC5E79_0, l08DC5E79_1, obj_rock);
	
}

if ((l08DC5E79_2 > 0))
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 79E78FF6
	/// @DnDParent : 08DC5E79
	instance_destroy();


}

