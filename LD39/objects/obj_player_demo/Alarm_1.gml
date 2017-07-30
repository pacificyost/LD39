if (global.score_manager.energy != 0)
{
	if (y-32 < 0)
	{
		if (x+32 > room_width)
		{
			image_angle = 270;
			y += 32;
		}
		else
		{
			image_angle = 0;
			x += 32;
		}
	}
	else if (y+32 > room_height)
	{
		if (x-32 < 0)
		{
			image_angle = 90;
			y -= 32;
		}
		else
		{
			image_angle = 180;
			x -= 32;
		}
	}
	else
	{
		if (x-32 < 0)
		{
			image_angle = 90;
			y -= 32;
		}
		else
		{
			image_angle = 270;
			y += 32;
		}
	}
	alarm_set(1,60);
}
else
{
	alarm_set(3,180);
}
