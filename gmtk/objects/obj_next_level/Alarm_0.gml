if instance_exists(obj_map){

	obj_map.restart_map = true;
	global.can_pass = false;
	global.level+=1;

}else{

	room_goto(rm_game);

}