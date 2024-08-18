/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 671A1835
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player1"
/// @DnDSaveInfo : "obj" "obj_player1"
var l671A1835_0 = collision_point(x + 0, y + 0, obj_player1, true, 1);
if((l671A1835_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0C2EF0D0
	/// @DnDParent : 671A1835
	/// @DnDArgument : "function" "player1GetDamage"
	/// @DnDArgument : "arg" "4"
	player1GetDamage(4);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 4B0DBE26
	/// @DnDParent : 671A1835
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	effect_create_above(0, x + 0, y + 0, 2, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75181871
	/// @DnDParent : 671A1835
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 798E4BAD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player2"
/// @DnDSaveInfo : "obj" "obj_player2"
var l798E4BAD_0 = collision_point(x + 0, y + 0, obj_player2, true, 1);
if((l798E4BAD_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6702FCD0
	/// @DnDParent : 798E4BAD
	/// @DnDArgument : "function" "player2GetDamage"
	/// @DnDArgument : "arg" "4"
	player2GetDamage(4);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 699DF8C3
	/// @DnDParent : 798E4BAD
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	effect_create_above(0, x + 0, y + 0, 2, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 257A2218
	/// @DnDParent : 798E4BAD
	instance_destroy();
}