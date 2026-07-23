if life >= lifetime{

	instance_destroy();

}

if place_meeting(x, y, obj_player){

	obj_player.hp -= 1.25;
	instance_destroy();

}

if distance_to_point(start_x, start_y) > 16{

	speed = 16;

}

if distance_to_point(start_x, start_y) > 300{

	instance_destroy();

}

life ++;