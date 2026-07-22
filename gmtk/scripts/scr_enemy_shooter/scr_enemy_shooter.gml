function scr_enemy_shot(){

	aim_direction = point_direction(x, y, obj_player.x, obj_player.y);

	if take_turn == true{

		if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range{

			take_turn = false;
			alarm[1] = shot_cooldown;
			var _shot = instance_create_depth(x + clamp(obj_player.x - x, -16, 16), y + clamp(obj_player.y - y, -16, 16), 0, obj_enemy_shot);
			_shot.start_x = x;
			_shot.start_y = y;
			_shot.source = self;
			_shot.image_angle = aim_direction;
			_shot.direction = aim_direction;

		}else{

			hspd = lengthdir_x(2.25, aim_direction);
			vspd = lengthdir_y(2.25, aim_direction);

			x += hspd;
			y += vspd;

		}

	}

}