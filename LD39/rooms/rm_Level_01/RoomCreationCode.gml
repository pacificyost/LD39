global.player = noone;
instance_create_depth(-100,-100,0,obj_uimanager);
for (var i = 0; i < room_width; i+=32)
{
	for (var j = 0; j < room_height; j+=32)
	{
		var spawn_object = irandom_range(0,100);
		if (spawn_object <= 5)
		{
			instance_create_depth(i,j,0,obj_energy);
		}
		else if (spawn_object >= 90)
		{
			instance_create_depth(i,j,0,obj_wall);
		}
		else if (!instance_exists(global.player))
		{
			instance_create_depth(i,j,0,obj_playerspawn);
		}
	}
}
