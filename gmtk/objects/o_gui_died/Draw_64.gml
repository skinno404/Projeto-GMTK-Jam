if(global.died){

	draw_set_font(fnt_alien);
	var w = camera_get_view_width(0);
	var h = camera_get_view_height(0);
	draw_set_colour(c_black);
	draw_set_alpha(alpha_hud);
	draw_rectangle(0,0,w,h,false);		

		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_text_transformed(w/2,h/2-64,"You Died",2,hud_scale,0);
		draw_set_halign(fa_left);
		draw_text_transformed(w/2-string_width("You DiedYou Died"),h/2,"Enemies Killed :",1,hud_sub_scale,0);
		draw_text_transformed(w/2-string_width("You DiedYou Died"),h/2+32,"Max Score :",1,hud_sub_scale,0);
		draw_text_transformed(w/2-string_width("You DiedYou Died"),h/2+64,"Level :",1,hud_sub_scale,0);
		draw_set_halign(fa_right);
		draw_text_transformed(w/2+string_width("You DiedYou Died"),h/2,global.kills_total_run,1,hud_sub_scale,0);
		draw_text_transformed(w/2+string_width("You DiedYou Died"),h/2+32,global.score_total_run,1,hud_sub_scale,0);
		draw_text_transformed(w/2+string_width("You DiedYou Died"),h/2+64,global.level,1,hud_sub_scale,0);
	
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	var mb1 = mouse_check_button_pressed(mb_left);
	
	var space = keyboard_check_pressed(vk_space);
	var enter = keyboard_check_pressed(vk_enter);
	draw_set_halign(fa_center);
	var w2 = string_width("Retry");
	var h2 = string_height("Retry");
	
	draw_set_alpha(0.5);
	//draw_rectangle(w/2-w2,h/2-h2+127,w/2+w2,h/2+h2+127,false);
	draw_set_alpha(1);
	if(space || enter){
		can_glow = true;
	}
	if(point_in_rectangle(mx,my,w/2-w2,h/2-h2+127,w/2+w2,h/2+h2+127)){
		if(mb1){
			can_glow = true;
		}
	}
	draw_set_colour(c_white);
	draw_text_transformed(w/2,h/2+108,"Retry",2,hud_sub_scale*2,0);
	draw_text_transformed(w/2,w/2-64,hint,1,1,0);
	draw_text_transformed(w/2,w/2-44,"Made by skinno && alm",1,1,0);
if(can_glow){
	glow_alpha = approach(glow_alpha,1,0.1);
}

if(glow_alpha = 1){
	global.can_pass = true;
	global.killeds = 0;
	global.enemy_count = 0;
	global.score_total_run = 0;
	global.kills_total_run = 0;
	global.scores = 0;
	global.actual_combo = 0;
	global.level = 1;
	global.died = false;
	global.can_pass = false;
	can_glow = false;
	glow_alpha = 0;
	obj_map.restart_map = true;

}

draw_set_colour(c_white);
draw_set_alpha(glow_alpha)
draw_rectangle(0,0,w,h,false);
}