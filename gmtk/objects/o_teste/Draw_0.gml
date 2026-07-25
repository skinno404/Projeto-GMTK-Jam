
var player_dir = point_direction(x,y,obj_player.x,obj_player.y);

if(player_dir > 90 && player_dir < 260){
	image_yscale = -1;
}else{
	image_yscale = 1;
}

var x_torret = x + lengthdir_x(+2.5,player_dir);

	draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);
	draw_sprite_ext(s_gun_torret,0,x_torret,y-11,-1,image_yscale,player_dir,c_white,1);
