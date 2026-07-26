if(global.show_controls){

	can_show_hud = true;
	alpha_hud = approach(alpha_hud,1,0.1);
	hud_scale = lerp(hud_scale,2,0.05);
	if(hud_scale > 1.8){
	hud_sub_scale = lerp(hud_sub_scale,1,0.05);
	}
		
}else{
	alpha_hud = approach(alpha_hud,0,0.1);
	hud_scale = approach(hud_scale,0,0.1);
	hud_sub_scale = lerp(hud_sub_scale,0,0.1);
}

if(keyboard_check_pressed(ord("K"))){
	global.show_controls = false;	
}
