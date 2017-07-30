effect_create_above(ef_explosion,x+16,y+16,random(0.5),c_yellow);
effect_create_above(ef_explosion,x+16,y+16,random(0.5),c_red);
audio_play_sound(snd_hurt,1,false);
instance_destroy(id);