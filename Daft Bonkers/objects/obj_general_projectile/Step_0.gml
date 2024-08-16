/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 52FB5801
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player1"
/// @DnDSaveInfo : "obj" "obj_player1"
var l52FB5801_0 = collision_point(x + 0, y + 0, obj_player1, true, 1);
if((l52FB5801_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6D06A1FB
	/// @DnDParent : 52FB5801
	/// @DnDArgument : "function" "player1GetDamage"
	/// @DnDArgument : "arg" "1"
	player1GetDamage(1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09CD0194
	/// @DnDParent : 52FB5801
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 0A14CA30
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player2"
/// @DnDSaveInfo : "obj" "obj_player2"
var l0A14CA30_0 = collision_point(x + 0, y + 0, obj_player2, true, 1);
if((l0A14CA30_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 77F8D67F
	/// @DnDParent : 0A14CA30
	/// @DnDArgument : "function" "player2GetDamage"
	/// @DnDArgument : "arg" "1"
	player2GetDamage(1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1955BC63
	/// @DnDParent : 0A14CA30
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 4CCD57D7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_stage"
/// @DnDSaveInfo : "obj" "obj_stage"
var l4CCD57D7_0 = collision_point(x + 0, y + 0, obj_stage, true, 1);
if((l4CCD57D7_0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0BABC673
	/// @DnDParent : 4CCD57D7
	instance_destroy();
}