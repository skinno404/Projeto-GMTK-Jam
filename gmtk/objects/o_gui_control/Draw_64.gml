/*if(instance_exists(obj_camera)){
	var w = display_get_gui_width();//width
	var h = display_get_gui_height();//height
	
	var offset = 32;

	draw_set_halign(fa_center);
	draw_sprite_ext(s_bullet_gui,obj_player.ammo_atual,w-offset*2,h-offset*2,scale*2,scale_y*2,angle,c_white,1);
}*/

if(global.in_hud || alpha_hud > 0){

	var w = camera_get_view_width(0);
	var h = camera_get_view_height(0);
	draw_set_colour(c_black);
	draw_set_alpha(alpha_hud);
	draw_rectangle(0,0,w,h,false);	
	draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_text_transformed(w/2,h/2-64,"Level Complete",2,hud_scale,0);
		
	draw_set_halign(fa_left);
	
	draw_text_transformed(w/2-string_width("Enemies Killed"),h/2,"Enemies Killed",1,hud_sub_scale,0);
	draw_text_transformed(w/2-string_width("Enemies Killed"),h/2+32,"Level",1,hud_sub_scale,0);
	
	var enemy_temp = -1;
	var killed_temp = -1;
	if(enemy_temp = -1){
		enemy_temp = global.enemy_count;	
	}else{
		global.enemy_count = 0;	
	}
	
	
	if(killed_temp = -1){
		killed_temp = global.killeds;	
	}else{
		global.killeds = 0;
	}
	
	if(killed_temp >= enemy_temp){
		draw_set_colour(c_yellow);
		draw_text_transformed(w/2+75,h/2-95,"CLEAR",2,hud_scale,-40);
	}
	
	draw_set_halign(fa_right);
	
	draw_text_transformed(w/2+string_width("Enemies Killed"),h/2,enemy_temp,1,hud_sub_scale,0);
	draw_text_transformed(w/2+string_width("Enemies Killed")-string_width(enemy_temp),h/2,"/",1,hud_sub_scale,0);
	draw_text_transformed(w/2+string_width("Enemies Killed")-string_width(enemy_temp)-string_width("/"),h/2,killed_temp,1,hud_sub_scale,0);
	
	draw_text_transformed(w/2+string_width("Enemies Killed"),h/2+32,"11",1,hud_sub_scale,0);
	draw_text_transformed(w/2+string_width("Enemies Killed")-string_width("??"),h/2+32,"/",1,hud_sub_scale,0);
	draw_text_transformed(w/2+string_width("Enemies Killed")-string_width("??")-string_width("/"),h/2+32,global.level,1,hud_sub_scale,0);
	
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	var mb1 = mouse_check_button_pressed(mb_left);
	draw_set_halign(fa_center);
	var w2 = string_width("Next");
	var h2 = string_height("Next");
	draw_set_alpha(1);
	
	if(point_in_rectangle(mx,my,w/2-w2,h/2-h2+74,w/2+w2,h/2+h2+74)){
		if(mb1){
			can_glow = true;
		}
	}
	draw_set_colour(c_white);
	draw_text_transformed(w/2,h/2+64,"Next",2,hud_sub_scale*2,0);
	
if(can_glow){
	glow_alpha = approach(glow_alpha,1,0.1);
}

if(glow_alpha = 1){
	global.can_pass = true;
	global.killeds = 0;
	global.enemy_count = 0;
}

draw_set_colour(c_white);
draw_set_alpha(glow_alpha)
draw_rectangle(0,0,w,h,false);

}

draw_set_alpha(1);