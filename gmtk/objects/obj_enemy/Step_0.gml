if(hp <= 0){
	var yy = y;
	if type == "drone"{

		audio_emitter_position(generic_enemy_emitter, obj_player.x - x, obj_player.y - y, 0);
		audio_play_sound_on(generic_enemy_emitter, snd_drone_dying, 0, 12, 0.5, 0, random_range(0.9, 1.1));
		yy = y + sprite_get_height(spr_enemy_drone);

	}else if type == "robot"{

		audio_emitter_position(generic_enemy_emitter, obj_player.x - x, obj_player.y - y, 0);
		audio_play_sound_on(generic_enemy_emitter, snd_robot_dying, 0, 12, 0.5, 0, random_range(0.9, 1.1));

	}else if type == "oreaseca"{

		audio_stop_sound(snd_charge_up);
		audio_stop_sound(snd_charge_loss);
		audio_emitter_position(generic_enemy_emitter, obj_player.x - x, obj_player.y - y, 0);
		audio_play_sound_on(generic_enemy_emitter, snd_drone_dying, 0, 12, 0.5, 0, random_range(0.9, 1.1));
		yy = y + sprite_get_height(spr_enemy_torret_dead);

	}
	
	o_gui_control.alarm[0] = global.combo_delay;
	global.actual_combo +=1;
	var dead = instance_create_layer(x,y,"Instances",o_enemy_dead);
	dead.sprite_index = dead_spr;
	randomise();
	dead.image_index = irandom_range(0,2);
	dead.image_speed = 0;
	global.combo_score += score_;
	global.scores += score_;
	global.killeds ++;
	global.kills_total_run+=1;
	global.kills_total_game_time+=1;
	instance_destroy();

}

if !collision_line(x, y, obj_player.x, obj_player.y - 8, obj_collision, true, true){

	free_sight = true;

}else{

	free_sight = false;

}