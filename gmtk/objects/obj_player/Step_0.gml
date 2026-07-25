up = keyboard_check(up_key);
down = keyboard_check(down_key);
left = keyboard_check(left_key);
right = keyboard_check(right_key);

attack = mouse_check_button_pressed(attack_key);
shot = mouse_check_button(shot_key);

if tutorial_start == true{

	hp -= 0.03;

	if hp <= 2{

		hp = 2;

	}

}

hp = clamp(hp, 0, max_hp);

script_execute(estate);

var test = keyboard_check_pressed(ord("L"));

if(test){
	global.card = true;	
}