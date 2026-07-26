draw_set_font(fnt_aeroblade);

var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var p = obj_player.hp / obj_player.max_hp;
var meio = _guiw / 2;

if obj_player.fight_or_flight == false and global.died == false{

	// Barra esquerda
	draw_rectangle_colour(
	    meio - meio * p,
	    _guih - 12,
	    meio,
	    _guih,
	    c_white, c_white, c_white, c_white, false
	);

	// Barra direita
	draw_rectangle_colour(
	    meio,
	    _guih - 12,
	    meio + meio * p,
	    _guih,
	    c_white, c_white, c_white, c_white, false
	);

	draw_set_halign(fa_center);
	draw_text_transformed(_guiw/2, _guih - 56, string(obj_player.hp), 2, 2, 0);

}

if obj_player.fight_or_flight and obj_player.alarm[5] > 0 and global.died == false{

	draw_set_halign(fa_center);
	draw_text_transformed(_guiw/2 - 16, _guih/2 - 32, string((obj_player.alarm[5]/60)), 5 * (obj_player.alarm[5] / 180 * 2), 5 * (obj_player.alarm[5] / 180 * 2), 0);

}