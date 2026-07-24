	if generate == false{

		var _col = make_color_hsv(color, 65, 255);

		for (var _x = 0; _x < map_width; _x ++ ){

			for (var _y = 0; _y < map_height; _y ++ ){

				var _px = x + (12 * _x);
				var _py = y - (12 * _y);

				if map[_x, _y] == EMPTY{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_grey, c_grey, c_grey, c_grey, 0);

				}

				if map[_x, _y] == FILL{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_red, c_red, c_red, c_red, 0);

				}

				if map[_x, _y] == PATH{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_blue, c_blue, c_blue, c_blue, 0);

				}

			}

		}

	}