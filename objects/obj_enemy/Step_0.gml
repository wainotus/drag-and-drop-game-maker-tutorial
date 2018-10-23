/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2DE9B652
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "a1bac7e7-d0f2-42d2-a442-e794cfc58473"
var l2DE9B652_0 = false;
l2DE9B652_0 = instance_exists(obj_player);
if(l2DE9B652_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6E72D9DF
	/// @DnDParent : 2DE9B652
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1CFA3745
	/// @DnDParent : 2DE9B652
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 04B68AB2
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3073B0F0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A5D6631
	/// @DnDApplyTo : 4ac7a90a-14f8-4fec-842c-a2c6872ad4cf
	/// @DnDParent : 3073B0F0
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 58D3D089
	/// @DnDParent : 3073B0F0
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.6,1.4)"
	/// @DnDSaveInfo : "sound" "1801286e-fba9-4868-9d81-24da59bff9e5"
	audio_sound_pitch(snd_death, random_range(0.6,1.4));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 14085BFB
	/// @DnDParent : 3073B0F0
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "1801286e-fba9-4868-9d81-24da59bff9e5"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36979231
	/// @DnDParent : 3073B0F0
	instance_destroy();
}