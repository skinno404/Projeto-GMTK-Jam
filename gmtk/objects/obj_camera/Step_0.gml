deadzone = deadzone * (zoom + zoom_extra);

if abs(target.x - follow_x) > deadzone{

	if sign(target.x - follow_x) = -1{

		follow_x = target.x + deadzone;

	}else{

		follow_x = target.x - deadzone;

	}

}

if abs(target.y - follow_y) > deadzone{

	if sign(target.y - follow_y) = -1{

		follow_y = target.y + deadzone;

	}else{

		follow_y = target.y - deadzone;

	}

}

mouse_offsetx = mouse_x - follow_x;
mouse_offsety = mouse_y - follow_y;

mouse_offsetx = clamp(mouse_offsetx, -mouse_distance, mouse_distance);
mouse_offsety = clamp(mouse_offsety, -mouse_distance/2, mouse_distance/2);

offset = (target.hspd * 2.25);

if abs(offset) < 2{

	offset = 0;

}else{

	offset_add = lerp(offset_add, offset, 0.04);

}

if use_mouse{

	cam_x = follow_x + mouse_offsetx;
	cam_y = follow_y + mouse_offsety;

}else{

	cam_x = follow_x;
	cam_y = follow_y;

}

cam_x = clamp(cam_x, (camera_width * (zoom + zoom_extra) * 0.5), room_width - (camera_width * (zoom + zoom_extra) * 0.5));
cam_y = clamp(cam_y, (camera_height * (zoom + zoom_extra) * 0.5), room_height - (camera_height * (zoom + zoom_extra) * 0.5));

x = lerp(x, cam_x + offset_add, camera_spd);
y = lerp(y, cam_y, camera_spd);

camera_set_view_pos(camera_id, x - (camera_width * (zoom + zoom_extra) * 0.5), y - (camera_height * (zoom + zoom_extra) * 0.5));

camera_set_view_size(camera_id, camera_width * (zoom + zoom_extra), camera_height * (zoom + zoom_extra));
