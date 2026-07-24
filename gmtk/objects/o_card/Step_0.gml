	if(spin){
		card_scale_x = approach(card_scale_x,-1,0.1);
		if(card_scale_x = 0){
		card_index = 1;
		}
	}else{
		card_scale_x = approach(card_scale_x,1,0.1);	
		if(card_scale_x = 0){
		card_index = 0;
		}
	}