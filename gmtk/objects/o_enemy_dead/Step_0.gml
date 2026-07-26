if(t_part){
	scr_particle_dust2(x,y,c_black,c_gray);
	t_part = false;
}else{
	if(alarm[0] < 0){
		alarm[0] = t_delay;	
	}
}

for(var i = 0;i < peca_limit;i++){
	var peca = instance_create_layer(x,y,layer,o_pecas);
	peca.image_index = irandom_range(0,2);
	peca.spd = random_range(1.5,3);
	peca.dir = irandom_range(0,360);
	peca.image_angle = irandom_range(0,360);
	peca_limit-=1;
}
