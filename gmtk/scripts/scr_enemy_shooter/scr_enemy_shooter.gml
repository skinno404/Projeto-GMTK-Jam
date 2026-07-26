function scr_enemy_shot(){

	if instance_exists(obj_player) && !global.in_hud{

		aim_direction = point_direction(x, y, obj_player.x, obj_player.y);

	}

	if take_turn == true and global.died == false{

		if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range and free_sight{

			path_clear_points(path);
			take_turn = false;
			alarm[1] = shot_cooldown;
			
			var dir = point_direction(x,y,obj_player.x,obj_player.y);
			var x_part = x + lengthdir_x(+19,dir);
			var y_part = y + lengthdir_y(sprite_get_width(s_gun_shooter),dir);
			scr_particle_damage(x_part,y_part,aim_direction,c_red,c_gray);
			scr_particle_damage(x_part,y_part,aim_direction,c_red,c_gray);

			var _shot = instance_create_depth(x + lengthdir_x(24, aim_direction), y - 12 + lengthdir_y(24, aim_direction), 0, obj_enemy_shot);
			_shot.start_x = x;
			_shot.start_y = y;
			_shot.source = self;
			_shot.image_angle = aim_direction;
			_shot.direction = aim_direction;

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
function scr_enemy_dead_drone(){

sprite_index = spr_enemy_drone_dead;
	
}