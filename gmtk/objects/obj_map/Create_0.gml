cell_size = 64;
cell_h = room_width/cell_size;
cell_v = room_height/cell_size;

only_one_player = true;

map = ds_grid_create(cell_h, cell_v);
ds_grid_clear(map, 0);

generate = true;