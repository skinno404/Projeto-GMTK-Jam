event_inherited();

path = path_add();
global.path_find = mp_grid_create(0, 0, 128, 128, 16, 16);

free_sight = false;
aggro_range = 150;
slash_cooldown = 40;
can_attack = true;
estate = scr_enemy_idle;
atk_estate = scr_enemy_slash;