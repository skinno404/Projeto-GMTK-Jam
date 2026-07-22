/*
var w = display_get_gui_width();//width
var h = display_get_gui_height();//height
	
var offset = 32;

if(global.card){
	
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
		var mb1 = mouse_check_button_pressed(mb_left);
		var esc = keyboard_check_pressed(vk_escape);
		
		var w_c = sprite_get_width(s_card);
		var h_c = sprite_get_height(s_card);
		
		var x1 = w/2-w_c;
		var x2 = w/2+w_c;
		var y1 = h/2-h_c;
		var y2 = h/2+h_c;
		var width = sprite_get_width(s_card);
		var x_card = w/2;
		var card_offset = width+32;
		
		for(var i = 0;i < card_number;i++){
	
		//draw_rectangle(x1,y1,x2,y2,false)
		if(point_in_rectangle(mx,my,x1,y1,x2,y2)){
			spin = true;	
		}else{
			spin = false;	
		}
		
		if(esc){
			global.card = false;	
		}
		
		draw_sprite_ext(s_card,card_index,x_card/card_number,h/2,card_scale_x*2,2,0,c_white,1);
		
		x_card+=card_offset*card_number;
		
		}
	}*/
	
var w = display_get_gui_width();//width
var h = display_get_gui_height();//height

if(global.card){

var x1 = w/2;
var y1 = h/2;

var width = sprite_get_width(s_card);
var height = sprite_get_height(s_card);

var mx1 = w/2-width;
var mx2 = w/2+width;

var my1 = y1-height;
var my2 = y1+height;

for(var i = 0;i < card_number;i++){
	
	draw_sprite_ext(s_card,card_index,x1-sprite_get_width(s_card)*2-64,y1,2,2,0,c_white,1);
	draw_rectangle(mx1-sprite_get_width(s_card)*2-64,my1,mx2-sprite_get_width(s_card)*2-64,my2,false);
	
	x1+=sprite_get_width(s_card)*2+64;
	mx1+=sprite_get_width(s_card)*2+64;
	mx2+=sprite_get_width(s_card)*2+64;
	
}





}

