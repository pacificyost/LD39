global.score_manager.energy += other.energy;
global.score_manager.energy_gathered += other.energy;
if (global.score_manager.energy > global.score_manager.max_energy)
{
	global.score_manager.max_energy = global.score_manager.energy;
}
instance_destroy(other);
