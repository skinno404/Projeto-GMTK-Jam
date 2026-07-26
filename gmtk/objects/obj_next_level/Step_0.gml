if(place_meeting(x,y,obj_player)){
	
	global.in_hud = true;
	
}else{
	
	global.in_hud = false;	
	
}
if(global.can_pass){
	if(alarm[0] < 0){
		alarm[0] = 60;
	}
}
