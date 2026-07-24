draw_path(path, x, y, 1);

if(aim_direction > 90 && aim_direction < 260){
	image_yscale = -1;
}else{
	image_yscale = 1;
}

if(obj_player.x > x){
	image_xscale = 1;
}else{
	image_xscale = -1;
}

if(!collision_line(x,y,obj_player.x,obj_player.y,obj_collision,false,true)){
draw_sprite_ext(sprite_index,image_index,x,y,1,image_yscale,aim_direction,c_white,1);
}else{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_white,1);	
}