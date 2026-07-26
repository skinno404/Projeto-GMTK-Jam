if(hp <= 0){
	var yy = y;
	if(type = spr_enemy_drone_dead){
		yy = y + sprite_get_width(spr_enemy_drone);
	}
	global.killeds +=1;
	var dead = instance_create_layer(x,yy,layer,o_enemy_dead);
	dead.sprite_index = type;
	randomise();
	dead.image_index = irandom_range(0,2);
	dead.image_speed = 0;
	instance_destroy();
}