var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var p = obj_player.hp / obj_player.max_hp;
var meio = _guiw / 2;

// Barra esquerda
draw_rectangle_colour(
    meio - meio * p,
    _guih - 4,
    meio,
    _guih,
    c_white, c_white, c_white, c_white, false
);

// Barra direita
draw_rectangle_colour(
    meio,
    _guih - 4,
    meio + meio * p,
    _guih,
    c_white, c_white, c_white, c_white, false
);

draw_text_transformed(_guiw/2, _guih - 56, string(obj_player.hp), 2, 2, 0);