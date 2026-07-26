event_inherited();

if(obj_player.x > x){
	image_xscale = 1;	
}else{
	image_xscale = -1;	
}

if !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true){

	free_sight = true;

}else{

	free_sight = false;

}

aim_direction = point_direction(x, y, obj_player.x, obj_player.y);
if(instance_exists(obj_player_shot)){
	if(parry = -1){
	parry = choose(true,true,true,true,true,true,true,true,true,true,false);
	}
}

if distance_to_object(obj_player_shot) < 80{

	if parry and obj_player_shot.parry == false and can_attack{

		can_attack = false;
		path_clear_points(path);
		estate = atk_estate;
		alarm[1] = 32;
		var _attack = instance_create_depth(x + lengthdir_x(18, aim_direction), y - 12 + lengthdir_y(12, aim_direction), 0, obj_enemy_atk);
		_attack.start_x = x;
		_attack.start_y = y;
		_attack.source = self;
		_attack.image_angle = aim_direction;
		_attack.direction = aim_direction;
		parry = -1;
	}
}

script_execute(estate);