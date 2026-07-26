enum alarms{

	attack,
	shot

}

up_key = ord("W");
down_key = ord("S");
left_key = ord("A");
right_key = ord("D");
reload_key = ord("R");
dash_key = vk_space;
attack_key = mb_right;
shot_key = mb_left;

up = 0;
down = 0;
left = 0;
right = 0;

hspd = 0;
vspd = 0;


spd = 5.5;
move_dir = 0;
move_spd = 0;
can_move = true;

attack = 0;
can_attack = true;
atk_cooldown = 20;

shot = 0;
can_shot = true;
shot_cooldown = 6;
shot_range = 350;

dash = 0;
can_dash = true;
dash_spd = 24;
dash_dir = 0;
dash_range = 5;

aim_direction = 0;
aim_start_x = 0;
aim_start_y = 0;
aim_distance = 28;

hp = 10;
max_hp = 10;
hp_gain = 2.8;
invulnerable = false;
fight_or_flight = false;
hit = false;

ammo_max = 8;
ammo_atual = ammo_max;
ammo_delay = 30;

step_cd = 0;

player_audio_emitter = audio_emitter_create();

if !instance_exists(obj_camera){

	instance_create_depth(x, y, 12, obj_camera);

}

if !instance_exists(o_gui_control){

	instance_create_depth(x, y, 12, o_gui_control);

}

if !instance_exists(o_gui_died){

	instance_create_depth(x, y, 12, o_gui_died);

}

if !instance_exists(o_gui_binds){

	instance_create_depth(x, y, 12, o_gui_binds);

}

if !instance_exists(o_particle_global){

	instance_create_depth(x, y, 12, o_particle_global);

}

if !instance_exists(obj_timer){

	instance_create_depth(x, y, 12, obj_timer);

}

if !instance_exists(o_info_control){

	instance_create_depth(x, y, 12, o_info_control);

}

estate = scr_player_movement;
global.atual_weapon = s_gun;
global.died = false;
atual_sprite = 0;
offset_x = 1;
offset_y = 1;

tutorial_start = true;

t_part = false;
t_delay = 5;

window_set_fullscreen(true);

can_use_attack = true;
