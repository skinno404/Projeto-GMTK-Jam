if life <= 0{

	audio_stop_sound(snd_enemy_shot);
	audio_emitter_position(shot_sound_emitter, obj_player.x - x, obj_player.y - y, 0);
	audio_play_sound_on(shot_sound_emitter, snd_enemy_shot, 0, 12, 0.7, 0, shot_pitch + random_range(-0.05, 0.15));

}

if life >= lifetime and can_destroy{

	instance_destroy();

}

if place_meeting(x, y, obj_player){

	if hit == false{

		hit = true;
		obj_player.hp -= 1.25;
		obj_camera.zoom_extra = -0.05;
		obj_camera.zoom_extra_offset = 0.1;
		speed = 0;
		image_alpha = 0;

	}

}

if distance_to_point(start_x, start_y) > 16{

	speed = 16;

}

if distance_to_point(start_x, start_y) > 350{

	instance_destroy();

}

life ++;