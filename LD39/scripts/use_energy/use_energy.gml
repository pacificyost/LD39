global.score_manager.energy -= argument[0];
global.overlay_level = 0;

if (global.score_manager.energy < global.score_manager.start_energy*3/4)
{
	global.overlay_level = 1;
}
if (global.score_manager.energy < global.score_manager.start_energy*2/4)
{
	global.overlay_level = 2;
}
if (global.score_manager.energy < global.score_manager.start_energy/4)
{
	global.overlay_level = 3;
}
