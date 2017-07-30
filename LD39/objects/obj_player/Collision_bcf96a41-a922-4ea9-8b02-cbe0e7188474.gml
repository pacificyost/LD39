global.score_manager.energy += other.energy;
global.score_manager.energy_gathered += other.energy;
if (global.score_manager.energy > global.score_manager.max_energy)
{
	global.score_manager.max_energy = global.score_manager.energy;
}
instance_destroy(other);
audio_sound_pitch(snd_pickup,random_range(0.990,1.010));
audio_play_sound(snd_pickup,0,false);