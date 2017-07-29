for (var i = 0; i < room_width; i+=32)
{
	for (var j = 0; j < room_height; j+=32)
	{
		if (i < 64 || i >= room_width - 64 || j < 64 || j >= room_height - 64)
		{
			instance_create_depth(i,j,0,obj_wall);
			continue;
		}
		
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
