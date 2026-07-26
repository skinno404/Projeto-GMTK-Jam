if instance_exists(obj_map){

	obj_map.restart_map = true;
	global.can_pass = false;
	instance_destroy(o_pecas);
	global.level+=1;

}else{

	room_goto(rm_game);

}