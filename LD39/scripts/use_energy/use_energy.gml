if (instance_number(obj_scoremanager) > 0)
{
	global.score_manager.energy -= argument[0];

	if (instance_number(obj_uimanager) > 0)
	{
		if (global.score_manager.energy <= 0)
		{
			global.score_manager.energy = 0;
			audio_play_sound(snd_explosion,1,false);
			room_goto(rm_GameEnd);
		}


		var lastoverlay_level = global.ui_manager.overlay_level;
		if (global.score_manager.energy > global.score_manager.start_energy*3/4)
		{
			global.ui_manager.overlay_level = 0;
		}
		if (global.score_manager.energy < global.score_manager.start_energy*3/4)
		{
			global.ui_manager.overlay_level = 1;
		}
		if (global.score_manager.energy < global.score_manager.start_energy*2/4)
		{
			global.ui_manager.overlay_level = 2;
		}
		if (global.score_manager.energy < global.score_manager.start_energy/4)
		{
			global.ui_manager.overlay_level = 3;
		}

		//show_debug_message(string(lastoverlay_level) + " " + string(global.ui_manager.overlay_level));
		
		if (lastoverlay_level < global.ui_manager.overlay_level)
		{
			effect_create_above(ef_explosion,x+random_range(-2,2),y+random_range(-2,2),1,c_yellow);
			effect_create_above(ef_explosion,x+random_range(-2,2),y+random_range(-2,2),random(0.5),c_orange);
			effect_create_above(ef_explosion,x+random_range(-2,2),y+random_range(-2,2),random(0.5),c_red);
			audio_play_sound(snd_hurt,1,false);
		}
		else if (lastoverlay_level > global.ui_manager.overlay_level)
		{
			effect_create_above(ef_ring,x+random_range(-2,2),y+random_range(-2,2),1,c_yellow);
			effect_create_above(ef_ring,x+random_range(-2,2),y+random_range(-2,2),random(0.5),c_white);
			audio_play_sound(snd_powerup,1,false);
		}
	}
}