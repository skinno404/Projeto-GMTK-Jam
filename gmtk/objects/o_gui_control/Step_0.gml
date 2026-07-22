	if(squash = true){
		scale_y = approach(scale_y,0.8,0.4);
		scale = approach(scale,0.8,0.4);
		if(target = 0){
			target = choose(20,-20);
		}
		angle = approach(angle,target,8);
	}else{
		scale_y = approach(scale_y,1,0.1);
		scale = approach(scale,1,0.1);
		angle = approach(angle,0,0.8);
	}
	if(scale_y = 0.8){
		squash = false;	
		target = 0;
	}
	