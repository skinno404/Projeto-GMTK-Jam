#macro EMPTY 0
#macro FILL 1

cell_size = 64;
cell_h = room_width/cell_size;
cell_v = room_height/cell_size;

only_one_player = false;
exit_done = false;
generate_player = true;

enemy_pool = [];
enemy_count = 0;

map = ds_grid_create(cell_h, cell_v);
ds_grid_clear(map, EMPTY);

restart_map = false;
generate = true;
global.enemy_count = 0;