var newangle = 0;
var xoffset = 0;
var yoffset = 0;

if (argument[0] == "left" && x - 32 >= 0)
{
	if (!place_meeting(x-32,y,obj_wall))
	{
		xoffset = -32;
		newangle=180;
	}
}
if (argument[0] == "right" && x + 32 < room_width)
{
	if (!place_meeting(x+32,y,obj_wall))
	{
		xoffset = 32;
		newangle=0;
	}
}
if (argument[0] == "up" && y - 32 >= 0)
{
	if (!place_meeting(x,y-32,obj_wall))
	{
		yoffset = -32;
		newangle=90;
	}
}
if (argument[0] == "down" && y + 32 < room_height)
{
	if (!place_meeting(x,y+32,obj_wall))
	{
		yoffset = 32;
		newangle=270;
	}
}

if (xoffset != 0 || yoffset != 0)
{
	image_angle = newangle;
	x += xoffset;
	y += yoffset;
	use_energy(global.score_manager.move_energy);
	global.score_manager.steps_taken++;
	audio_sound_pitch(snd_step,random_range(0.7,1.3));
	audio_play_sound(snd_step,1,false);
}