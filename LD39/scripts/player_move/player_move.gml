// @description move player
if (argument[0] == "left" && x - 32 >= 0)
{
	if (!place_meeting(x-32,y,obj_wall))
	{
		x -= 32;
	}
}
if (argument[0] == "right" && x + 32 < room_width)
{
	if (!place_meeting(x+32,y,obj_wall))
	{
		x += 32;
	}
}
if (argument[0] == "up" && y - 32 >= 0)
{
	if (!place_meeting(x,y-32,obj_wall))
	{
		y -= 32;
	}
}
if (argument[0] == "down" && y + 32 < room_height)
{
	if (!place_meeting(x,y+32,obj_wall))
	{
		y += 32;
	}
}
