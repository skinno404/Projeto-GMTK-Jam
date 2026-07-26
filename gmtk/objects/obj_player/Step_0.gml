if global.in_hud or global.died{

	exit;

}

up = keyboard_check(up_key) or keyboard_check(vk_up);
down = keyboard_check(down_key) or keyboard_check(vk_down);
left = keyboard_check(left_key) or keyboard_check(vk_left);
right = keyboard_check(right_key) or keyboard_check(vk_right);

dash = keyboard_check(dash_key) or keyboard_check(vk_shift);
attack = mouse_check_button_pressed(attack_key);
shot = mouse_check_button(shot_key);

hp -= 0.03;

if tutorial_start == true{

	if hp <= 2{

		hp = 2;

	}

}

if hp <= 0 and alarm[5] <= 0 and fight_or_flight == false{

	hit = false;
	alarm[5] = 180;
	fight_or_flight = true;

}

if fight_or_flight{

	if hit{

		global.died = true;

	}

	if hp > 0{

		alarm[5] = 0;
		fight_or_flight = false;

	}

}

hp = clamp(hp, 0, max_hp);

if can_move == true{

	script_execute(estate);

}

var test = keyboard_check_pressed(ord("L"));

if(test){
	global.card = true;	
}

audio_set_master_gain(0, 0.5);