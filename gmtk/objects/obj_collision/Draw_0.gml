draw_self();
draw_set_colour(c_black);
draw_set_alpha(0.5);
var w = sprite_get_width(sprite_index);
var h = sprite_get_height(sprite_index);
draw_rectangle(x-w-3,y-h-3,x+w+3,y+h+3,false);
draw_set_alpha(1);
draw_set_colour(c_white);