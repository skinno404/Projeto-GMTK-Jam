enum alarms{

	attack,
	shot

}

up_key = ord("W");
down_key = ord("S");
left_key = ord("A");
right_key = ord("D");
attack_key = mb_right;
shot_key = mb_left;

up = 0;
down = 0;
left = 0;
right = 0;

hspd = 0;
vspd = 0;

spd = 4;
move_dir = 0;
move_spd = 0;

can_attack = true;
atk_cooldown = 15;

can_shot = true;
shot_cooldown = 6;

aim_direction = 0;
aim_start_x = 0;
aim_start_y = 0;
aim_distance = 28;

hp = 10;
max_hp = 10;
hp_gain = 2;

if !instance_exists(obj_camera){

	instance_create_depth(x, y, 12, obj_camera);

}

estate = scr_player_movement;