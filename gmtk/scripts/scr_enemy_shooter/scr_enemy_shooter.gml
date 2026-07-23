function scr_enemy_shot(){

	aim_direction = point_direction(x, y, obj_player.x, obj_player.y);

	if take_turn == true{

		if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range and !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, false, false){

			if path_exists(path){

				path_clear_points(path);

			}

			take_turn = false;
			alarm[1] = shot_cooldown;
			var _shot = instance_create_depth(x + lengthdir_x(24, aim_direction), y + lengthdir_y(24, aim_direction), 0, obj_enemy_shot);
			_shot.start_x = x;
			_shot.start_y = y;
			_shot.source = self;
			_shot.image_angle = aim_direction;
			_shot.direction = aim_direction;

		}else{

			path = path_add();

			if mp_potential_path_object(path, obj_player.x, obj_player.y, 3, 1.05, obj_collision){

				take_turn = false;
				alarm[1] = 10;
				path_start(path, 2.8, path_action_stop, false);

			}

		}

	}

}