yscale = approach(yscale,yscale_target,0.2);

x = source.x + lengthdir_x(18, image_angle);
y = source.y - 12 + lengthdir_y(12, image_angle);

if life <= 0{
	
	if(!global.in_hud){
	audio_stop_sound(snd_swing2);
	audio_stop_sound(snd_swing1);
	audio_emitter_position(sword_sound_emitter, obj_player.x - x, obj_player.y - y, 0);
	audio_play_sound_on(sword_sound_emitter, choose(snd_swing1, snd_swing2), 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));
	}

}

if life >= lifetime{

	instance_destroy();

}

if instance_place_list(x, y, obj_player_shot, shot_parry_list, true){
	image_index = 1;	
	parry = true;

	var _shot_list_checked = ds_list_create();

	for (var i = 0; i < ds_list_size(shot_parry_list); i ++) {

		if instance_exists(shot_parry_list[| i]){

			var _dir = point_direction(x, y, obj_player.x, obj_player.y);

			var _deflect = instance_create_depth(shot_parry_list[| i].x, shot_parry_list[| i].y, 0, obj_enemy_shot);
			_deflect.speed = shot_parry_list[| i].speed * 0.6;
			_deflect.start_x = shot_parry_list[| i].x;
			_deflect.start_y = shot_parry_list[| i].y;
			_deflect.direction = _dir;
			_deflect.image_angle = _dir;
			_deflect.source = source;
			_deflect.shot_pitch += 0.45;

			_shot_list_checked[|i ] = shot_parry_list[| i];

		}

	}

	for (var j = 0; j < ds_list_size(_shot_list_checked); j ++) {

		instance_destroy(shot_parry_list[| j]);

	}

	audio_emitter_position(sword_sound_emitter, obj_player.x - x, obj_player.y - y, 0);
	audio_play_sound_on(sword_sound_emitter, snd_parry, 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));

}else{
	image_index = 0;		
}

if parry{

	swing_pitch += 0.01;

}

if hit == false and obj_player.alarm[5] <= 170{

	hit = true;
	obj_player.hp -= source.damage;
	obj_player.hit = true;

}

life ++;