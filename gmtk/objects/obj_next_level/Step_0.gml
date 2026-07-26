if(place_meeting(x,y,obj_player)){

	obj_player.can_move = false;
	global.in_hud = true;
	
}else{
	
	global.in_hud = false;	
	
}
if(global.can_pass){
	if(alarm[0] < 0){
		alarm[0] = 60;
	}
}

var bixo = instance_place(x,y,obj_enemy)
if(bixo != noone){
	global.enemy_count-=1;
	instance_destroy(bixo);	
}
