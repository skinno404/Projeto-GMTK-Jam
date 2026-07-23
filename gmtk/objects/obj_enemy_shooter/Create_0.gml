event_inherited();

enum Ealarms{

	shot

}

path = path_add();
global.path_find = mp_grid_create(0, 0, 128, 128, 16, 16);

free_sight = false;
aggro_range = 225;
shot_cooldown = 45;
can_shot = false;
estate = scr_enemy_idle;
atk_estate = scr_enemy_shot;