if (instance_number(obj_uimanager) > 0)
{
	if (global.ui_manager.overlay_level > 0)
	{
		if (irandom(1) == 1)
		{
			effect_create_above(ef_smoke,x+random_range(-16,16),y+random_range(-16,16),random_range(0.2,1.5),c_gray);
		}
		else
		{
			effect_create_above(ef_smoke,x+random_range(-16,16),y+random_range(-16,16),random_range(0.2,1.5),c_yellow);
		}
	}
}
alarm_set(0,15);