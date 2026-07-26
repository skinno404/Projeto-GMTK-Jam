if(global.died){

	global.music_fx.effects[0] = audio_effect_create(AudioEffectType.LPF2);
	global.music_fx.effects[0].cutoff = 500;
    can_show_hud = true;
    alpha_hud = approach(alpha_hud,1,0.1);
    hud_scale = lerp(hud_scale,2,0.05);
    if(hud_scale > 1.8){
    hud_sub_scale = lerp(hud_sub_scale,1,0.05);
    }

    if(hint = -1){
    hint = choose("Fire your weapon... it exists...","Try reading the key binds...", "Melles can parry your bullets!", "Don't give up!", "Try shooting more, idk.",
	"You know you can dash, right?", "Obsession beats talent!", "There are more airplanes in the sea than ships in the sky...",
	"Does dealing damage cause damage?", "If you are being corroded by acid, pour water on it?", "It's not my fault.Do better...", "The game continues to be designed the way it should be.");
    }

}else{

	global.music_fx.effects[0] = undefined;
    hint = -1;
    alpha_hud = approach(alpha_hud,0,0.1);
    hud_scale = approach(hud_scale,0,0.1);
    hud_sub_scale = lerp(hud_sub_scale,0,0.1);
}

if(keyboard_check_pressed(ord("J"))){
	global.died = true;	
}
