x = obj_player.x + lengthdir_x(28, image_angle);
y = obj_player.y + lengthdir_y(28, image_angle);

if life <= 0{

	audio_stop_sound(snd_swing2);
	audio_stop_sound(snd_swing1);
	audio_emitter_position(sword_sound_emitter, sign(obj_camera.x - x), sign(obj_camera.y - y), 0);
	audio_play_sound_on(sword_sound_emitter, choose(snd_swing1, snd_swing2), 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));

}

if life >= lifetime{

	instance_destroy();

}

if instance_place_list(x, y, obj_enemy_shot, shot_parry_list, true){

	var _shot_list_checked = ds_list_create();

	for (var i = 0; i < ds_list_size(shot_parry_list); i ++) {

		if shot_parry_list[| i] != _shot_list_checked[| i]{

			var _deflect = instance_create_depth(shot_parry_list[| i].x, shot_parry_list[| i].y, 0, obj_player_shot);
			_deflect.speed = shot_parry_list[| i].speed * -1.5;
			_deflect.start_x = shot_parry_list[| i].x;
			_deflect.start_y = shot_parry_list[| i].y;
			_deflect.direction = shot_parry_list[| i].direction;
			_deflect.image_angle = shot_parry_list[| i].direction;
			_deflect.source = source;
			_deflect.shot_pitch += 0.25;

			shot_parry_list[| i].life += 950;
			_shot_list_checked[|i ] = shot_parry_list[| i];

		}

	}

	audio_stop_sound(snd_swing2);
	audio_stop_sound(snd_swing1);
	audio_emitter_position(sword_sound_emitter, sign(obj_camera.x - x), sign(obj_camera.y - y), 0);
	audio_play_sound_on(sword_sound_emitter, snd_parry, 0, 12, 0.5, 0, swing_pitch + random_range(-0.05, 0.05));

}
if instance_place_list(x, y, obj_enemy, enemy_hit_list, true){

	for (var i = 0; i < ds_list_size(enemy_hit_list); i ++) {

		source.hp += source.hp_gain;
		enemy_hit_list[| i].hp -= 5;

	}

}

life ++;