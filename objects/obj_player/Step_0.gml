/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 30DFCB71
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2F72E2CF
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 66FD2C37
var l66FD2C37_0;
l66FD2C37_0 = mouse_check_button(mb_left);
if (l66FD2C37_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AAFD32A
	/// @DnDParent : 66FD2C37
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B12BC3B
		/// @DnDParent : 3AAFD32A
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""layer_Bullet""
		/// @DnDSaveInfo : "objectid" "3611dc95-7dcb-48bf-8084-95889a11c2c6"
		instance_create_layer(x, y, "layer_Bullet", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B32DF2A
		/// @DnDParent : 3AAFD32A
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 5;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72BCBF21
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;