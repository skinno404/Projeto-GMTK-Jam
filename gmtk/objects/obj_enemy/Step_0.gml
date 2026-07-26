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

		audio_emitter_position(generic_enemy_emitter, obj_player.x - x, obj_player.y - y, 0);
		audio_play_sound_on(generic_enemy_emitter, snd_drone_dying, 0, 12, 0.5, 0, random_range(0.9, 1.1));
		yy = y + sprite_get_height(spr_enemy_torret_dead);

	}
	
	o_gui_control.alarm[0] = global.combo_delay;
	global.actual_combo +=1;
	global.scores += irandom_range(20,40);
	var dead = instance_create_layer(x,yy,"Instances",o_enemy_dead);
	dead.sprite_index = dead_spr;
	randomise();
	dead.image_index = irandom_range(0,2);
	dead.image_speed = 0;
	global.killeds ++;
	global.kills_total_run+=1;
	global.kills_total_game_time+=1;
	instance_destroy();

}

if !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true){

	free_sight = true;

}else{

	free_sight = false;

}