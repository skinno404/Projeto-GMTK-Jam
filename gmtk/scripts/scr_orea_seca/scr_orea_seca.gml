function scr_orea_seca_atk(){

	if instance_exists(obj_player){

		aim_direction = point_direction(x, y, obj_player.x, obj_player.y);

	}

	if free_sight == false and charge_shot > 0{

		charge_shot --;
		audio_stop_sound(snd_charge_up);
		audio_emitter_position(turret_emitter, obj_player.x - x, obj_player.y - y, 0);
		audio_play_sound_on(turret_emitter, snd_charge_loss, 0, 12, 0.7, 0, 0.6 + (charge_shot/3));

	}

	if take_turn == true and global.died == false{

		if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range and free_sight{

			charge_shot ++;
			take_turn = false;
			alarm[1] = 8;

			if charge_shot >= 10{

				audio_stop_sound(snd_charge_loss);
				audio_stop_sound(snd_charge_up);
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

			}else{

				audio_stop_sound(snd_charge_loss);
				audio_emitter_position(turret_emitter, obj_player.x - x, obj_player.y - y, 0);
				audio_play_sound_on(turret_emitter, snd_charge_up, 0, 12, 0.7, 0, 0.6 + (charge_shot/2));

			}

		}

	}

}