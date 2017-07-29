if (instance_exists(global.player))
{
	draw_text_color(0,0,global.player.energy,c_black,c_black,c_black,c_black,1);
}
else
{
	draw_text_transformed_color(0,0,0,2,2,0,c_black,c_black,c_black,c_black,1);
}
