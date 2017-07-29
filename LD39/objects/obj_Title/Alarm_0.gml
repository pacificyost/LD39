/// @description Move to Help room after time up
// You can write your code in this editor

if (room == rm_Title && room_exists(rm_Help))
{
	room_goto(rm_Help);
}
if (room == rm_Help)
{
	if (room_exists(rm_Level_01) && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)))
	{
		room_goto(rm_Level_01);
	}
	else
	{
		alarm_set(0,30);
	}
}