event_inherited();

enum Ealarms{

	shot

}

path = path_add();

spd = 4;
free_sight = false;
aggro_range = 250;
shot_cooldown = 35;
can_shot = false;
estate = scr_enemy_idle;
atk_estate = scr_enemy_shot;

player_dir2 = 0;

target_up = -2;
target_down = 2;

can_target = false;

offset_y = 0;
always_top = false;