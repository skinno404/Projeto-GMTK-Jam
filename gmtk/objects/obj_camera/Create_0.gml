camera_width = 720;
camera_height = 405;
view_width = 1920;
view_height = 1080;
camera_spd = 0.1;
window_set_fullscreen(false);

zoom = 0.8;
zoom_extra = 0;
zoom_extra_offset = 0.1;
view_id = 0;
target = obj_player;
deadzone = 32;
offset = 0;
offset_add = 0;
use_mouse = true;
mouse_offsetx = 0;
mouse_offsety = 0;
mouse_distance = 30;

follow_x = 0;
follow_y = 0;

cam_x = 0;
cam_y = 0;

window_set_size(view_width, view_height);

view_enabled = true;

view_set_visible(view_id, true);
view_set_hport(view_id, view_height);
view_set_wport(view_id, view_width);

camera_id = camera_create_view(0, 0, camera_width, camera_height);

//window_set_position(0, 0);

view_set_camera(view_id, camera_id);