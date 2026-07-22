up = keyboard_check(up_key);
down = keyboard_check(down_key);
left = keyboard_check(left_key);
right = keyboard_check(right_key);

attack_key = mouse_check_button_pressed(mb_right);
shot_key = mouse_check_button(mb_left);

hp -= 0.025;

hp = clamp(hp, 0, max_hp);

script_execute(estate);

var test = keyboard_check_pressed(ord("L"));

if(test){
	global.card = true;	
}