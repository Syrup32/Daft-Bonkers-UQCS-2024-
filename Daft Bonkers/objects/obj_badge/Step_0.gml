/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 103D7C79
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player1"
/// @DnDSaveInfo : "obj" "obj_player1"
var l103D7C79_0 = collision_point(x + 0, y + 0, obj_player1, true, 1);
if((l103D7C79_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 731F3150
	/// @DnDParent : 103D7C79
	/// @DnDArgument : "function" "player1_capture"
	player1_capture();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 038C6656
	/// @DnDParent : 103D7C79
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 061070E7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_player2"
/// @DnDSaveInfo : "obj" "obj_player2"
var l061070E7_0 = collision_point(x + 0, y + 0, obj_player2, true, 1);
if((l061070E7_0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1ACEDDC9
	/// @DnDParent : 061070E7
	/// @DnDArgument : "function" "player2_capture"
	player2_capture();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0A24A146
	/// @DnDParent : 061070E7
	instance_destroy();
}