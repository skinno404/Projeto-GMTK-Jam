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

	if hspd != 0 or vspd != 0{

		move_spd = spd;

	}else{

		move_spd = 0;

	}

	if attack_key and can_attack{

		can_attack = false;
		var _atk = instance_create_depth(x + lengthdir_x(28, aim_direction), y + lengthdir_y(28, aim_direction), 0, obj_player_atk);
		_atk.direction = aim_direction;
		_atk.image_angle = aim_direction;
		_atk.source = self;
		alarm[alarms.attack] = atk_cooldown;

	}

	if shot_key and can_shot{

		can_shot = false;
		var _shot = instance_create_depth(x + lengthdir_x(28, aim_direction), y + lengthdir_y(28, aim_direction), 0, obj_player_shot);
		_shot.start_x = x;
		_shot.start_y = y;
		_shot.source = self;
		_shot.direction = aim_direction;
		_shot.image_angle = aim_direction;
		alarm[alarms.shot] = shot_cooldown;

	}

	hspd = lengthdir_x(move_spd, move_dir);
	vspd = lengthdir_y(move_spd, move_dir);

	scr_player_collision();

	x += hspd;
	y += vspd;

}