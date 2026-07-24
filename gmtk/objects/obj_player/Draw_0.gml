
var mx = mouse_x;
var my = mouse_y;
var dir = point_direction(x,y,mx,my);
var dir2 = point_direction(mx,my,x,y);
show_debug_message(dir);
var xs = 1;
var dist = 10;

var x_gun = x + lengthdir_x(-3,dir);
//var y_gun = y + lengthdir_y(dist/2,dir);

var x_katana = x - lengthdir_x(dist-5,dir);
var y_katana = y - lengthdir_y(dist+10,dir);
var aim_xscale = 1;

if(dir > 90 && dir < 260){
	xs = -1;	
	aim_xscale = -1;
}else{
	xs = 1;	
	aim_xscale = 1;
}


if(aim_xscale != image_xscale){
	if(left && !right || up && !down || !left && right || !up && down){
	offset_x = 4.5;
	offset_y = 0;
	}
}else if(aim_xscale = image_xscale){
	if(left && !right || up && !down || !left && right || !up && down){
	offset_x = 0;
	offset_y = 1;
	}
}

if(my > y +64){

draw_sprite_ext(sprite_index,image_index,x,y,aim_xscale,image_yscale,0,c_white,1);
if(left && !right || up && !down || !left && right || !up && down){
	draw_sprite_ext(s_player_run_legs,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
}
draw_sprite_ext(atual_sprite,image_index,x_gun+sign(xs)*offset_x,y-sprite_get_height(spr_player)/2-offset_y,1,xs,dir,c_white,1);

}else{
	
draw_sprite_ext(sprite_index,image_index,x,y,aim_xscale,image_yscale,0,c_white,1);
if(left && !right || up && !down || !left && right || !up && down){
	draw_sprite_ext(s_player_run_legs,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
}
draw_sprite_ext(atual_sprite,image_index,x_gun+sign(xs)*offset_x,y-sprite_get_height(spr_player)/2-offset_y,1,xs,dir,c_white,1);

}

draw_text(x, y - 64, (hp));

	var x_ = x-sprite_get_width(spr_player)/2.5;
	var y_ = y+20;
/*
for(var i = 0;i < ammo_atual;i ++){
	
	draw_set_colour(c_black);
	draw_rectangle(x_-1.5,y_-2.5,x_+1.5,y_+1.5,false);
	
	draw_set_colour(c_blue);
	draw_rectangle(x_-1,y_-2,x_+1,y_+1,false);
	
	x_+=5;
	
}*/