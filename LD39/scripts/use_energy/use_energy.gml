energy -= argument[0];
global.overlay_level = 0;

if (energy < start_energy*3/4)
{
	global.overlay_level = 1;
}
if (energy < start_energy*2/4)
{
	global.overlay_level = 2;
}
if (energy < start_energy/4)
{
	global.overlay_level = 3;
}


