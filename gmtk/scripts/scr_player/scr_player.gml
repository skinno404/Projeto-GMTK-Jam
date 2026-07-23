function scr_player_collision(){

	if place_meeting(x + hspd, y, obj_collision){

		while !place_meeting(x + sign(hspd), y, obj_collision){

			x += sign(hspd);

		}

		hspd = 0;

	}

	if place_meeting(x, y + vspd, obj_collision){

		while !place_meeting(x, y + sign(vspd), obj_collision){

			y += sign(vspd);

		}

		vspd = 0;

	}

}

function scr_player_movement(){

	vspd = down - up;
	hspd = right - left;

	move_dir = point_direction(x, y, x + hspd, y + vspd);
	aim_direction = point_direction(x, y, mouse_x, mouse_y);

	if hspd != 0{

		image_xscale = sign(hspd);

	}

	if hspd != 0 or vspd != 0{

		sprite_index = spr_player_run;
		move_spd = spd;

	}else{

		sprite_index = spr_player_idle;
		image_xscale = 1;
		move_spd = 0;

	}

	if attack_key and can_attack{

		can_attack = false;
		var _atk = instance_create_depth(x + lengthdir_x(24, aim_direction), y - 6 + lengthdir_y(24, aim_direction), 0, obj_player_atk);
		_atk.direction = aim_direction;
		_atk.image_angle = aim_direction;
		_atk.source = self;
		alarm[alarms.attack] = atk_cooldown;

	}

	if shot_key and can_shot && ammo_atual > 0 && !global.card{

		audio_stop_sound(snd_pistol_shot);
		audio_emitter_position(player_audio_emitter, sign(obj_camera.x - x) * 0.65, sign(obj_camera.y - y) * 0.65, 0);
		audio_play_sound_on(player_audio_emitter, snd_pistol_shot, 0, 2, 0.2, 0, (ammo_atual)/(ammo_atual + 0.25));

		can_shot = false;
		ammo_atual -= 1;
		var _shot = instance_create_depth(x + lengthdir_x(24, aim_direction), y - 6 + lengthdir_y(24, aim_direction), 0, obj_player_shot);
		_shot.start_x = x;
		_shot.start_y = y;
		_shot.source = self;
		_shot.direction = aim_direction;
		_shot.image_angle = aim_direction;
		alarm[alarms.shot] = shot_cooldown;
		o_gui_control.squash = true;

	}else if(ammo_atual <= 0){
		if(alarm[2] < 0){
			alarm[2] = ammo_delay;
			o_gui_control.squash = true;
		}
	}

	if keyboard_check_pressed(reload_key){
		if(alarm[2] < 0){
			alarm[2] = ammo_delay;
			o_gui_control.squash = true;
		}
	}

	hspd = lengthdir_x(move_spd, move_dir);
	vspd = lengthdir_y(move_spd, move_dir);

	scr_player_collision();

	x += hspd;
	y += vspd;

}