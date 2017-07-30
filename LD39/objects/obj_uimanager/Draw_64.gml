if (sprite_exists(global.overlay))
{
	draw_sprite(global.overlay,global.overlay_level,0,0);
}

if (instance_number(obj_scoremanager) > 0)
{
	draw_text_color(0,0,global.score_manager.energy,c_white,c_white,c_white,c_white,1);
}
