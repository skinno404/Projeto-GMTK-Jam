if life >= lifetime{

	instance_destroy();

}

var _hit_list = ds_list_create();

if instance_place_list(x, y, obj_enemy, _hit_list, 0){

	for (var i = 0; i < ds_list_size(_hit_list); i ++) {

		source.hp += source.hp_gain;
		_hit_list[| i].hp -= 1;

	}

	instance_destroy();

}

if distance_to_point(start_x, start_y) > 16{

	//speed = speed * 15;

}

if distance_to_point(start_x, start_y) > 350{

	instance_destroy();

}

life ++;