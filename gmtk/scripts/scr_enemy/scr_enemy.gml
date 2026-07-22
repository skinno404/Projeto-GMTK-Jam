function scr_enemy_idle(){

	if abs(obj_player.x - x) < aggro_range and abs(obj_player.y - y) < aggro_range{

		estate = atk_estate;
		alarm[0] = 10;

	}

}