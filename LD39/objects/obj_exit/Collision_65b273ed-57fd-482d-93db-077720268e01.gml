if (room == rm_Title)
{
	room_goto_next();
}
if (room == rm_GameEnd)
{
	if (instance_number(obj_uimanager) > 0)
	{
		instance_destroy(global.ui_manager);
	}
	if (instance_number(obj_scoremanager) > 0)
	{
		instance_destroy(global.score_manager);
	}
	room_goto(rm_Title);
}