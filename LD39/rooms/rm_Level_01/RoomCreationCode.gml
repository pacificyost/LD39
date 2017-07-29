instance_create_depth(-100,-100,0,obj_gamemanager);
for (var i = 0; i < room_width; i+=32)
{
	for (var j = 0; j < room_height; j+=32)
	{
		var spawn_object = irandom_range(0,100);
		if (spawn_object <= 5)
		{
			instance_create_depth(i,j,0,obj_energy);
		}
		
		if (spawn_object >= 80)
		{
			instance_create_depth(i,j,0,obj_wall);
		}
	}
}
