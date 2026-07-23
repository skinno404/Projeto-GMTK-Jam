if generate == true{

	map_height = irandom_range(map_height_min, map_height_max);

	var _cmap;
	var _filled_count = 0;
	var _start = 0;
	var _path_counter = 0;

	for (var yy = 0; yy < map_height; yy ++ ) {

		for (var xx = 0; xx < map_width; xx ++ ) {

			_cmap[xx, yy] = EMPTY;
			_path_counter[yy] = {

				width: 0,
				pos:[]

			};


		}

	}

	mapx_width = _path_counter;
	map = _cmap;
	generate = false;

}