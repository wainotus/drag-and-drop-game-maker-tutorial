/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F36101F
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 617157CF
	/// @DnDParent : 3F36101F
	/// @DnDArgument : "alpha" ".02"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += .02;
}