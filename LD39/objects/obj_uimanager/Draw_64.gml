if (sprite_exists(global.overlay))
{
	draw_sprite(global.overlay,global.overlay_level,0,0);
}

if (instance_exists(global.player))
{
	draw_text_color(0,0,global.player.energy,c_white,c_white,c_white,c_white,1);
}
else
{
	draw_text_transformed_color(0,0,0,2,2,0,c_white,c_white,c_white,c_white,1);
}
draw_text_color(1000,0,global.overlay_level,c_white,c_white,c_white,c_white,1);
