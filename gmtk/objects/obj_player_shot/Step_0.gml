if life <= 0{
	
	if(!global.in_hud && !global.died && !global.show_controls){
	audio_stop_sound(snd_pistol_shot);
	audio_emitter_position(shot_sound_emitter, obj_player.x - x, obj_player.y - y, 0);
	audio_play_sound_on(shot_sound_emitter, snd_pistol_shot, 0, 12, 0.65, 0, shot_pitch + random_range(-0.05, 0.15));
	}

}

if life >= lifetime{

	instance_destroy();

}

var _hit_list = ds_list_create();

if instance_place_list(x, y, obj_enemy, _hit_list, true) {
	
	var dummy = instance_place(x,y,o_dummy);
	if(dummy != noone){
		dummy.hits += 1;	
	}

	for (var i = 0; i < ds_list_size(_hit_list); i ++) {

		source.hp += source.hp_gain;
		_hit_list[| i].hp -= 1;

	}

	global.scores += irandom_range(45, 65);
	instance_destroy();

}

if distance_to_point(start_x, start_y) > obj_player.shot_range{
	
	scr_particle_magic(x,y,direction,c_blue,c_blue);
	scr_particle_project(x,y,c_blue);
	instance_destroy();

}

if place_meeting(x, y, obj_collision){

	scr_particle_magic(x,y,direction,c_blue,c_blue);
	scr_particle_project(x,y,c_blue);
	instance_destroy();
	
}

life ++;

if(t_part){
		scr_particle_project(x,y,c_blue);
}else{
	if(alarm[0] < 0){
		alarm[0] = t_delay;
	}
}
