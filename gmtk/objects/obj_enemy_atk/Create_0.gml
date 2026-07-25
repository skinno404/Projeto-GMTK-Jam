lifetime = 5;
life = 0;
source = 0;
hit = false;
parry = false;

swing_pitch = 0.65;
sword_sound_emitter = audio_emitter_create();

shot_parry_list = ds_list_create();
enemy_hit_list = ds_list_create();

always_top = true;