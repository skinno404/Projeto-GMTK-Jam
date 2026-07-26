yscale = approach(yscale,yscale_target,0.2);

x = obj_player.x + lengthdir_x(18, image_angle);
y = obj_player.y - 12 + lengthdir_y(12, image_angle);

if life <= 0{

	audio_stop_sound(snd_swing2);
	audio_stop_sound(snd_swing1);
	audio_emitter_position(sword_sound_emitter, obj_player.x - x, obj_player.y - y, 0);
	audio_play_sound_on(sword_sound_emitter, choose(snd_swing1, snd_swing2), 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));

}

if life >= lifetime{

	instance_destroy();

}

if instance_place_list(x, y, obj_enemy_shot, shot_parry_list, true){

	var _shot_list_checked = ds_list_create();
	image_index = 1;
	scr_particle_project(x+sprite_get_width(sprite_index),y,c_purple);
	scr_particle_project(x+sprite_get_width(sprite_index),y,c_purple);
	scr_particle_project(x+sprite_get_width(sprite_index),y,c_purple);
	for (var i = 0; i < ds_list_size(shot_parry_list); i ++) {

		if instance_exists(shot_parry_list[| i]){

			var _dir = point_direction(x, y, mouse_x, mouse_y);
			
			var _deflect = instance_create_depth(shot_parry_list[| i].x, shot_parry_list[| i].y, 0, obj_player_shot);
			_deflect.speed = shot_parry_list[| i].speed /2 + 12;
			_deflect.start_x = shot_parry_list[| i].x;
			_deflect.start_y = shot_parry_list[| i].y;
			_deflect.direction = _dir;
			_deflect.image_angle = _dir;
			_deflect.source = source;
			_deflect.shot_pitch += 0.75;

			_shot_list_checked[|i ] = shot_parry_list[| i];

		}

	}

	for (var j = 0; j < ds_list_size(_shot_list_checked); j ++) {

		instance_destroy(shot_parry_list[| j]);

	}

	global.scores += irandom_range(25, 40);
	obj_player.hp = obj_player.max_hp;
	audio_stop_sound(snd_swing2);
	audio_stop_sound(snd_swing1);
	audio_emitter_position(sword_sound_emitter, x - obj_player.x * 0.8, y - obj_player.y * 0.8, 0);
	audio_play_sound_on(sword_sound_emitter, snd_parry, 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));

}else{
	image_index = 0;	
}

if instance_place_list(x, y, obj_enemy, enemy_hit_list, true){
	
	var dummy = instance_place(x,y,o_dummy);
	if(dummy != noone){
		if(!hit_check_dummy){
		dummy.hits += 1;	
		hit_check_dummy = true
		}
	}

	for (var i = 0; i < ds_list_size(enemy_hit_list); i ++) {

		source.hp += source.hp_gain;
		if(instance_exists(enemy_hit_list[| i])){
			enemy_hit_list[| i].hp -= 5;
		}
	}

}

life ++;