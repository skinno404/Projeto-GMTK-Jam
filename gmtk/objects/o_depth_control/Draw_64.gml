if (!ds_exists(depth_grid, ds_type_grid)) { exit; }

for (var i = 0; i < ds_grid_height(depth_grid); i++){
	var inst = depth_grid[# 0, i];
	if (instance_exists(inst)) {
		with (inst) {
			// A forma correta que o GameMaker aceita para forçar o GUI:
			event_perform(ev_draw, ev_gui);
		}
	}
}

draw_set_colour(c_white);
draw_set_alpha(1);
