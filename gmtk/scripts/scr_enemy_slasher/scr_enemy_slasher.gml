function scr_enemy_slash(){

	if take_turn == true{

		if abs(obj_player.x - x) < atk_range and abs(obj_player.y - y) < atk_range and free_sight{

			take_turn = false;
			path_clear_points(path);
			alarm[1] = slash_cooldown;
			var _attack = instance_create_depth(x + lengthdir_x(18, aim_direction), y - 12 + lengthdir_y(12, aim_direction), 0, obj_enemy_atk);
			_attack.start_x = x;
			_attack.start_y = y;
			_attack.source = self;
			_attack.image_angle = aim_direction;
			_attack.direction = aim_direction;

		}else{

			path = path_add();

			if mp_grid_path(global.path_find, path, x, y, obj_player.x, obj_player.y, true){

				take_turn = false;
				alarm[1] = 5;
				path_start(path, spd, path_action_stop, false);

			}

		}

	}

}