if(global.show_controls){
	obj_player.hp = obj_player.max_hp;
	draw_set_font(fnt_alien);
	var w = camera_get_view_width(0);
	var h = camera_get_view_height(0);
	draw_set_colour(c_black);
	draw_set_alpha(alpha_hud);
	draw_rectangle(0,0,w,h,false);		

		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_text_transformed(w/2,h/2-64,"Controls",2,hud_scale,0);
		draw_set_halign(fa_left);
		draw_text_transformed(w/2-string_width("ControlsControlsC"),h/2,"Move :",1,hud_sub_scale,0);
		draw_text_transformed(w/2-string_width("ControlsControlsC"),h/2+32,"Dash :",1,hud_sub_scale,0);
		draw_text_transformed(w/2-string_width("ControlsControlsC"),h/2+64,"Shot :",1,hud_sub_scale,0);
		draw_text_transformed(w/2-string_width("ControlsControlsC"),h/2+96,"Sword Attack :",1,hud_sub_scale,0);
		draw_set_halign(fa_right);
		draw_text_transformed(w/2+string_width("ControlsControlsC"),h/2,"W,A,S,D",1,hud_sub_scale,0);
		draw_text_transformed(w/2+string_width("ControlsControlsC"),h/2+32,"Space",1,hud_sub_scale,0);
		draw_text_transformed(w/2+string_width("ControlsControlsC"),h/2+64,"Left Mouse Button",1,hud_sub_scale,0);
		draw_text_transformed(w/2+string_width("ControlsControlsC"),h/2+96,"Right Mouse Button",1,hud_sub_scale,0);
	
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	var mb1 = mouse_check_button_pressed(mb_left);
	
	var space = keyboard_check_pressed(vk_space);
	var enter = keyboard_check_pressed(vk_enter);
	draw_set_halign(fa_center);
	var w2 = string_width("Start");
	var h2 = string_height("Start");
	
	draw_set_alpha(0.5);
	//draw_rectangle(w/2-w2,h/2-h2+127,w/2+w2,h/2+h2+127,false);
	draw_set_alpha(1);
	if(space || enter){
		can_glow = true;	
	}
	if(point_in_rectangle(mx,my,w/2-w2,h/2-h2+127+32,w/2+w2,h/2+h2+127+32)){
		if(mb1){
			can_glow = true;
		}
	}
	draw_set_colour(c_white);
	draw_text_transformed(w/2,h/2+108+32,"Start",2,hud_sub_scale*2,0);
	
if(can_glow){
	glow_alpha = approach(glow_alpha,1,0.1);
}

if(glow_alpha = 1){
	global.show_controls = false;
}

draw_set_colour(c_white);
draw_set_alpha(glow_alpha)
draw_rectangle(0,0,w,h,false);
}