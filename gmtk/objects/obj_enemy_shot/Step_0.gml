if life >= lifetime{

	instance_destroy();

}

if distance_to_point(start_x, start_y) > 16{

	speed = 16;

}

if distance_to_point(start_x, start_y) > 300{

	instance_destroy();

}

life ++;