var l52FB5801_0 = collision_point(x + 0, y + 0, obj_player1, true, 1);
if((l52FB5801_0))
{
	player1GetDamage(1);

	instance_destroy();
}

var l0A14CA30_0 = collision_point(x + 0, y + 0, obj_player2, true, 1);
if((l0A14CA30_0))
{
	player2GetDamage(1);

	instance_destroy();
}

var l4CCD57D7_0 = collision_point(x + 0, y + 0, obj_stage, true, 1);
if((l4CCD57D7_0))
{
	instance_destroy();
}