if(instance_exists(obj_camera)){
	var w = display_get_gui_width();//width
	var h = display_get_gui_height();//height
	
	var offset = 32;

	draw_set_halign(fa_center);
	draw_sprite_ext(s_bullet_gui,obj_player.ammo_atual,w-offset*2,h-offset*2,scale*2,scale_y*2,angle,c_white,1);
}