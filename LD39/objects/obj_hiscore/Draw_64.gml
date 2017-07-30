draw_set_font(fnt_subtitle);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x,y,"Final energy: " + string(scoremanager.energy));
draw_text(x,y+64,"Max energy: " + string(scoremanager.max_energy));
draw_text(x,y+128,"Energy Picked up: " + string(scoremanager.energy_gathered));
draw_text(x,y+192,"Steps taken: " + string(scoremanager.steps_taken));
draw_set_font(fnt_default);
