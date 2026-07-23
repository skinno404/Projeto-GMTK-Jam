	if generate == false{

		var _col = make_color_hsv(color, 65, 255);

		for (var _x = 0; _x < map_width; _x ++ ){

			for (var _y = 0; _y < map_height; _y ++ ){

				var _px = x - 200 + (12 * _x);
				var _py = y - 150 - (12 * _y);

				if map[_x, _y] == EMPTY{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_grey, c_grey, c_grey, c_grey, 0);

				}

				if map[_x, _y] == SHOP{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_blue, c_blue, c_blue, c_blue, 0);

				}

				if map[_x, _y] == COMBAT{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_red, c_red, c_red, c_red, 0);

				}
				if map[_x, _y] == CHEST{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, c_yellow, c_yellow, c_yellow, c_yellow, 0);

				}

				if map[_x, _y] == RANDOM{

					draw_rectangle_color(_px, _py, _px + 10, _py + 10, _col, _col, _col, _col, 0);

					if color >= 255{

						color = 0;

					}else{

						color += 0.5;

					}

				}

			}

		}

	}