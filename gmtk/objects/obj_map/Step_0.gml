randomize();

if generate == true{

	var _dir = 0;
	var _last_dir = _dir;
	xx = 2;
	yy = cell_v/2;

	var chance = 100;
	var steps = 100;
	var _steps_taken = 0;

	repeat(25){

		_dir = 0;

		if only_one_player == true{

			only_one_player = false;

		}

		for (var i = 0; i < steps; i ++) {

			_steps_taken ++;

			if random(chance) <= 50 or _steps_taken >= 5 and _dir != _last_dir{

				_steps_taken = 0;
				_last_dir = _dir;
				_dir = irandom(3);

			}

			xx += lengthdir_x(1, _dir * 90);
			yy += lengthdir_y(1, _dir * 90);

			xx = clamp(xx, 2, cell_h - 2);
			yy = clamp(yy, 2, cell_v - 2);

			map[# xx, yy] = 1;

		}

	}

	for (var _xx = 0; _xx < cell_h; _xx ++) {

		for (var _yy = 0; _yy < cell_v; _yy ++) {

			if map[# _xx, _yy] == 0{

				var _wall = instance_create_layer(_xx * cell_size, _yy * cell_size, "Instances", obj_collision);

				_wall.image_xscale *= cell_size/sprite_get_width(spr_wall);
				_wall.image_yscale *= cell_size/sprite_get_height(spr_wall);

			}

		}

	}

	generate = false;

}

if keyboard_check_pressed(vk_space){

	generate = true;
	ds_grid_clear(map, 0);
	instance_destroy(obj_collision);

}