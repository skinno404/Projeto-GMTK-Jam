draw_path(path, x, y, 1);

if instance_exists(obj_player){

	player_dir = point_direction(x,y,obj_player.x,obj_player.y);

}

	if(obj_player.x > x){
		image_xscale = -1;
	}else if(obj_player.x < x){
		image_xscale = 1;
	}
	
draw_sprite_ext(sprite_index,image_index,x,y-offset_y,image_xscale,1,0,c_white,1);
if(estate = atk_estate){
	draw_sprite_ext(s_gun_shooter,0,x-sign(image_xscale)*5,y-offset_y-1,-1,1,player_dir,c_white,1);
}else{
	draw_sprite_ext(s_gun_shooter,0,x-sign(image_xscale)*5,y-offset_y-1,1,1,0,c_white,1);
}
