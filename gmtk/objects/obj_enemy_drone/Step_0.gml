event_inherited();

if(!can_target){
	offset_y = approach(offset_y,target_down,0.5);
	if(offset_y = target_down){
		can_target = true;
	}
}else{
	offset_y = approach(offset_y,target_up,0.25);
	if(offset_y = target_up){
		can_target = false;	
	}
}

if(y+20 > obj_player.y){
	
	always_top = true;
	
}else{
		
	always_top = false;
	
}