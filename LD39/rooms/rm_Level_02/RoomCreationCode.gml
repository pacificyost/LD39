global.player = noone;
init_particle();
if (instance_number(obj_uimanager) < 1)
{
	instance_create_depth(-100,-100,0,obj_uimanager);
}
//random_room();
room_02();