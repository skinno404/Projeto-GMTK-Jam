if(obj_player.x < x){
	image_xscale = -1;
}else{
	image_xscale = 1;
}

if(hits >= 20){
	obj_player.can_use_attack = true;
}