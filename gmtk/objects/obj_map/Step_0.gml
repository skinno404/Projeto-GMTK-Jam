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

	repeat(100){

		_dir = 0;

		for (var i = 0; i < steps; i ++) {

			_steps_taken ++;

			if random(100) <= 85 or _steps_taken >= 1 and xx < cell_h{

				_steps_taken = 0;
				_last_dir = _dir;
				_dir = choose(0, 3, 1);

			}

			if xx < cell_h - 2{

				xx += lengthdir_x(1, _dir * 90);
				yy += lengthdir_y(1, _dir * 90);

			}

			if xx >= cell_h - 6 and exit_done == false{

				instance_create_layer(xx - 32, yy, "Instances", obj_next_level);
				exit_done = true;

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

	for (var _xx = 0; _xx < cell_h; _xx ++) {

		for (var _yy = 0; _yy < cell_v; _yy ++) {

			if map[# _xx, _yy] == FILL{

				if random(100) <= 35{

					var _enemy = instance_create_layer(_xx * cell_size + irandom(16), _yy * cell_size + irandom(16), "Instances", choose(obj_enemy_robot, obj_enemy_drone, o_teste));

				}

			}

		}

	}

	generate = false;

}

if keyboard_check_pressed(vk_space){

	generate = true;
	ds_grid_clear(map, 0);
	instance_destroy(obj_collision);
	instance_destroy(obj_player);
	instance_destroy(o_gui_control);
	instance_destroy(obj_camera);
	only_one_player = false;

}