if (instance_number(obj_scoremanager) == 0)
{
	instance_create_depth(0,0,0,obj_scoremanager);
}
alarm_set(0,15);
if (room == rm_GameEnd)
{
	alarm_set(1,60);
}
if (room == rm_Title)
{
	alarm_set(2,60);
}
global.score_manager.move_energy = 0;
