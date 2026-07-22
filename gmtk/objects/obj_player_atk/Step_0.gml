x = obj_player.x + lengthdir_x(28, image_angle);
y = obj_player.y + lengthdir_y(28, image_angle);

if life >= lifetime{

	instance_destroy();

}

if instance_place_list(x, y, obj_enemy_shot, shot_parry_list, false){

	for (var i = 0; i < ds_list_size(shot_parry_list); i ++) {

		var _deflect = instance_create_depth(shot_parry_list[| i].x, shot_parry_list[| i].y, 0, obj_player_shot);
		_deflect.speed = shot_parry_list[| i].speed * -1.5;
		_deflect.start_x = shot_parry_list[| i].x;
		_deflect.start_y = shot_parry_list[| i].y;
		_deflect.direction = shot_parry_list[| i].direction;
		_deflect.image_angle = shot_parry_list[| i].direction;
		_deflect.source = source;

		instance_destroy(shot_parry_list[| i]);

	}

}
if instance_place_list(x, y, obj_enemy, enemy_hit_list, false){

	for (var i = 0; i < ds_list_size(enemy_hit_list); i ++) {

		source.hp += source.hp_gain;
		enemy_hit_list[| i].hp -= 5;

	}

}

life ++;