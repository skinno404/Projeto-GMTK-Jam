function scr_orea_seca_atk(){

	if instance_exists(obj_player){

		aim_direction = point_direction(x, y, obj_player.x, obj_player.y);

	}

	if free_sight == false{

		charge_shot --;

	}

	if take_turn == true{

		if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range and free_sight{

			charge_shot ++;
			take_turn = false;
			alarm[1] = 8;

			if charge_shot >= 7{

				var dir = point_direction(x,y,obj_player.x,obj_player.y);
				var x_part = x + lengthdir_x(17,dir);
				var y_part = y-12 + lengthdir_y(sprite_get_width(s_gun_torret),dir);
				scr_particle_damage(x_part,y_part,aim_direction,c_red,c_gray);
				scr_particle_damage(x_part,y_part,aim_direction,c_red,c_gray);

				var _shot = instance_create_depth(x + lengthdir_x(24, aim_direction), y-12 + lengthdir_y(24, aim_direction), 0, obj_enemy_shot);
				_shot.start_x = x;
				_shot.start_y = y;
				_shot.source = self;
				_shot.image_angle = aim_direction;
				_shot.direction = aim_direction;

			}

		}

	}

	charge_shot = clamp(charge_shot, 0, 7);

}