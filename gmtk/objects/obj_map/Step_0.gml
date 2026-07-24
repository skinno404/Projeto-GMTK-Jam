randomize();

if generate == true{

	map_width = irandom_range(map_width_min, map_width_max);

	var _cmap;
	var _filled_count = 0;
	var _start = 0;
	var _path_counter = 0;
	var _last_room = 0;

	for (var xx = 0; xx < map_width; xx ++ ) {

		for (var yy = 0; yy < map_height; yy ++ ) {

			_cmap[xx, yy] = EMPTY;
			_last_room[xx] = {

				x : 0,
				y : 0

			}

		}

	}

	for (var xx = 0; xx < map_width; xx ++ ) {

		for (var yy = 0; yy < map_height; yy ++ ) {

			if xx == 0 and _start == false{

				var _roll = irandom(map_height - 1);

				_cmap[xx, _roll] = FILL;
				_last_room[0].x = xx;
				_last_room[0].y = _roll;
				_start = true;

			}

		}

	}

	for (var xx = 0; xx < map_width; xx ++ ) {

		var _filled = false;

		for (var yy = 0; yy < map_height; yy ++ ) {

			var _roll = random(100);

			if xx > 0 and yy < map_height and _filled == false{

				if xx == 1{

					_cmap[xx, _last_room[xx - 1].y] = PATH;
					_last_room[xx].x = xx;
					_last_room[xx].y = _last_room[xx - 1].y;
					_filled = true;

				}

				if _roll <= map_chance{

					var _rnd_height = irandom_range(-1, 1);

					while _last_room[xx - 1].y + _rnd_height < 0 or _last_room[xx - 1].y + _rnd_height > map_height{

						_rnd_height = irandom_range(-1, 1);

					}

					if _rnd_height != 0{

						_cmap[xx, _last_room[xx - 1].y + _rnd_height] = PATH;
						_last_room[xx].x = xx - 1;
						_last_room[xx].y = _last_room[xx - 1].y + _rnd_height;
						_filled = true;

					}else{

						_cmap[xx, _last_room[xx - 1].y] = FILL;
						_last_room[xx].x = xx;
						_last_room[xx].y = _last_room[xx - 1].y;
						_filled = true;

					}

				}

				if _filled == false{

					_cmap[xx, _last_room[xx - 1].y] = PATH;
					_last_room[xx].x = xx;
					_last_room[xx].y = _last_room[xx - 1].y;

				}

			}

		}

	}

	map = _cmap;
	generate = false;

}

if keyboard_check(vk_space){

	generate = true;

}