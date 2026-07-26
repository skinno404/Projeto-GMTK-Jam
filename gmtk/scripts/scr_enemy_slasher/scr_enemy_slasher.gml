function scr_enemy_slash(){
	
	var in_vision = collision_line(x,y,obj_player.x,obj_player.y,obj_collision,false,true);

	if take_turn == true and global.died == false{

		if abs(obj_player.x - x) < atk_range and abs(obj_player.y - y) < atk_range and free_sight and !in_vision && !global.in_hud{

			sprite_index = spr_enemy_robot_idle;
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
			if(t_part){
			scr_particle_dust(x,y-5,aim_direction,c_gray,c_white);
			t_part = false;
			}else{
				if(alarm[2] < 0){
					alarm[2] = t_delay;	
				}
			}
			path = path_add();

			if free_sight{

				if mp_linear_path(path, obj_player.x, obj_player.y - 12, spd, false){

					take_turn = false;
					alarm[1] = 5;
					path_start(path, spd, path_action_stop, false);

				}

			}else{

				if mp_grid_path(global.path_find, path, x, y - 4, obj_player.x, obj_player.y - 4, true){

					sprite_index = spr_enemy_robot_run;
					take_turn = false;
					alarm[1] = 5;
					path_start(path, spd, path_action_stop, false);

				}

			}

		}

	}

}