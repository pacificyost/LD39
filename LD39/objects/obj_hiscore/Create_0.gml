if (instance_number(obj_scoremanager) > 0)
{
	scoremanager = global.score_manager;
}
else
{
	scoremanager = instance_create_depth(0,0,0,obj_scoremanager);
}
