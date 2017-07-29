if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
{
	player_move("up");
}
if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
{
	player_move("down");
}
if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
{
	player_move("left");
}
if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
{
	player_move("right");
}
