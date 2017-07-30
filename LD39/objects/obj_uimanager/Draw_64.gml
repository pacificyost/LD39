if (sprite_exists(global.overlay))
{
	draw_sprite(global.overlay,overlay_level,0,0);
}

if (instance_number(obj_scoremanager) > 0)
{
	var energydisplay = 0;
	if (global.score_manager.move_energy > 0)
	{
		energydisplay = global.score_manager.energy;
	}
	
	if (room != rm_GameEnd && room != rm_Title)
	{
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_sprite(spr_textborder,0,16,16);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_ui);
		draw_set_color(c_yellow);
		draw_text(19,32,"Energy: ");
		draw_set_halign(fa_right);
		draw_text(205,32,energydisplay);
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_sprite(spr_textborder,0,view_get_wport(0)-208,16);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_ui);
		draw_set_color(c_yellow);
		draw_text(view_get_wport(0)-205,32,"Crystals: ");
		draw_set_halign(fa_right);
		draw_text(view_get_wport(0)-19,32,instance_number(obj_energy));
		
	}
}
