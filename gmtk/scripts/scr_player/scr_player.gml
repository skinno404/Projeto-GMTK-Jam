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
	
		if(t_part){
		scr_particle_dust(x,y-5,move_dir,c_gray,c_white);
		t_part = false;
		}else{
			if(alarm[3] < 0){
				alarm[3] = t_delay;	
			}
		}
		image_xscale = sign(hspd);

	}

	if hspd != 0 or vspd != 0{

		if step_cd <= 0{

			step_cd = irandom_range(18, 22);
			audio_stop_sound(snd_step);
			audio_emitter_position(player_audio_emitter, obj_camera.x - x, obj_camera.y - y, 0);
			audio_play_sound_on(player_audio_emitter, snd_step, 0, 2, 0.3, 0, random_range(0.98, 1.05));

		}else{

			step_cd --;

		}

		sprite_index = spr_player_run;
		atual_sprite = s_gun_run;
		
		move_spd = spd;

	}else{

		sprite_index = spr_player_idle;
		atual_sprite = s_gun;
		offset_x = 2;
		offset_y = 1.5;
	
		move_spd = 0;

	}

	if attack and can_attack{
		
		can_attack = false;
		var _atk = instance_create_depth(x + lengthdir_x(18, aim_direction), y - 12 + lengthdir_y(12, aim_direction), 0, obj_player_atk);
		_atk.direction = aim_direction;
		_atk.image_angle = aim_direction;
		_atk.source = self;
		alarm[alarms.attack] = atk_cooldown;

	}

	if shot and can_shot && ammo_atual > 0 && alarm[2] <= 0{
		
		var dir = point_direction(x,y,mouse_x,mouse_y);
		var x_part = x + lengthdir_x(+24,dir);
		var y_part = y+6.5 + lengthdir_y(sprite_get_width(s_gun),dir);
		scr_particle_damage(x_part,y_part-sprite_get_width(s_gun)+offset_y,aim_direction,c_blue,c_gray);
		can_shot = false;
		ammo_atual -= 1;
		var _shot = instance_create_depth(x + lengthdir_x(10, aim_direction), y - 19 + lengthdir_y(10, aim_direction), 0, obj_player_shot);
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