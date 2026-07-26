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

	if nxt_lvl_snd_fx == false{

		global.music_fx.effects[0] = audio_effect_create(AudioEffectType.Reverb1);
		global.music_fx.effects[0].mix = 0.8;
		global.music_fx.effects[0].damp = 0.7;
		global.music_fx.effects[0].size = 0.6;
		nxt_lvl_snd_fx = true;

	}

	can_show_hud = true;
	alpha_hud = approach(alpha_hud,1,0.1);
	hud_scale = lerp(hud_scale,2,0.05);
	clear_scale = lerp(clear_scale,2,0.09);
	if(hud_scale > 1.8){
	hud_sub_scale = lerp(hud_sub_scale,1,0.05);
	}
		
}else{
	nxt_lvl_snd_fx = false;
	alpha_hud = approach(alpha_hud,0,0.1);
	hud_scale = approach(hud_scale,0,0.1);
	hud_sub_scale = lerp(hud_sub_scale,0,0.1);
}

var test = keyboard_check_pressed(ord("K"));

if(test){
	hud_sub_scale = 0;
	hud_scale = 0;
	clear_scale = 200;
	alpha_hud = 0;
}
