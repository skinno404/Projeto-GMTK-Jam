	if(squash = true){
		scale_y = approach(scale_y,0.8,0.4);
		scale = approach(scale,0.8,0.4);
		if(target = 0){
			target = choose(20,-20);
		}
		angle = approach(angle,target,8);
	}else{
		scale_y = approach(scale_y,1,0.1);
		scale = approach(scale,1,0.1);
		angle = approach(angle,0,0.8);
	}
	if(scale_y = 0.8){
		squash = false;	
		target = 0;
	}
	
if(global.in_hud){
	
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

var test = keyboard_check_pressed(ord("K"));

if(test){
	hud_sub_scale = 0;
	hud_scale = 0;
}
