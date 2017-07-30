draw_set_font(fnt_subtitle);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(view_get_wport(0)/2,(view_get_hport(0)/4)+64,"Final energy: " + string(scoremanager.energy));
draw_text(view_get_wport(0)/2,(view_get_hport(0)/4)+128,"Max energy: " + string(scoremanager.max_energy));
draw_text(view_get_wport(0)/2,(view_get_hport(0)/4)+192,"Energy Picked up: " + string(scoremanager.energy_gathered));
draw_text(view_get_wport(0)/2,(view_get_hport(0)/4)+256,"Steps taken: " + string(scoremanager.steps_taken));
draw_set_font(fnt_default);
