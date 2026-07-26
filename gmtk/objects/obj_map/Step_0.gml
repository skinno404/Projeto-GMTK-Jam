randomize();

if generate == true{

	global.path_find = mp_grid_create(0, 0, cell_h * 16, cell_v * 16, 16, 16);

	cell_h = irandom_range(room_width/cell_size/1.5 , room_width/cell_size);

	var _dir = 0;
	var _last_dir = _dir;
	xx = 2;
	yy = cell_v/2;

	var chance = 100;
	var steps = 100;
	var _steps_taken = 0;

	repeat(250){

		_dir = 0;

		for (var i = 0; i < steps; i ++) {

			_steps_taken ++;

			if random(100) <= 65 or _steps_taken >= 1 and xx < cell_h and i > 2{

				_steps_taken = 0;
				_dir = choose(0, 3, 1);

			}

			if xx < cell_h - 8 and xx > 1{

				xx += lengthdir_x(1, _dir * 90);
				yy += lengthdir_y(1, _dir * 90);

			}

			if only_one_player == false and generate_player == true{

				var _player = instance_create_layer(xx * cell_size, yy * cell_size - 32, "Instances", obj_player);
				_player.tutorial_start = false;
				only_one_player = true;

			}

			xx = clamp(xx, 2, cell_h - 2);
			yy = clamp(yy, 2, cell_v - 2);

			map[# xx, yy] = FILL;

		}

	}

	for (var _xx = 0; _xx < cell_h; _xx ++) {

		for (var _yy = 0; _yy < cell_v; _yy ++) {

			if map[# _xx, _yy] == EMPTY{

				var _wall = instance_create_layer(_xx * cell_size, _yy * cell_size, "Instances", obj_collision);

				_wall.image_xscale *= cell_size/sprite_get_width(spr_wall);
				_wall.image_yscale *= cell_size/sprite_get_height(spr_wall);

			}

		}

	}

	_steps_taken = 0;

	for (var _xx = 0; _xx < cell_h; _xx ++) {

		for (var _yy = 0; _yy < cell_v; _yy ++) {

			if map[# _xx, _yy] == FILL{

				if _xx == cell_h - 8{

					instance_create_layer(_xx * cell_size, _yy * cell_size, "Instances", obj_next_level);
					exit_done = true;

				}

				_steps_taken ++;

				if random(100) <= 10 + ((global.level - 1) * 3) and _xx > 8 and _steps_taken >= 4{

					if _xx < cell_h - 12{

						var _enemy = instance_create_layer(_xx * cell_size + irandom(16), _yy * cell_size + irandom(16), "Instances", obj_enemy_drone);
						global.enemy_count ++;

					}

				}else if _xx > 6 and _steps_taken >= irandom_range(7, 12) - ((global.level - 1) * 1.5){

					if _xx < cell_h - 12{

						global.enemy_count ++;
						_steps_taken = 0;
						var _enemy = instance_create_layer(_xx * cell_size + irandom(16), _yy * cell_size + irandom(16), "Instances", choose(obj_enemy_robot, obj_enemy_drone,obj_orea_seca));

					}

				}

			}

		}

	}

	generate = false;

}

if keyboard_check_pressed(ord("M")){

	restart_map = true;

}

if restart_map{

	restart_map = false;
	generate = true;
	ds_grid_clear(map, 0);
	instance_destroy(obj_collision);
	instance_destroy(obj_player);
	instance_destroy(o_gui_control);
	instance_destroy(obj_camera);
	instance_destroy(obj_enemy);
	instance_destroy(obj_timer);
	instance_destroy(o_enemy_dead);
	instance_destroy(obj_next_level);
	instance_destroy(obj_player_shot);
	instance_destroy(obj_player_atk);
	instance_destroy(obj_enemy_atk);
	instance_destroy(obj_enemy_shot);
	global.enemy_count = 0;
	only_one_player = false;

}