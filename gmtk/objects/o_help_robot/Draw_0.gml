draw_self();

if(distance_to_object(obj_player) < 32){
	sprite_index = s_help_robot_open;
	if(image_index < image_number-1){
		image_speed = 1;	
	}else{
		image_speed = 0;	
	}
	draw_text(x,y-32,text);
}else{
	sprite_index = s_help_robot_close;
	if(image_index < image_number-1){
		image_speed = 1;	
	}else{
		image_speed = 0;	
	}
}