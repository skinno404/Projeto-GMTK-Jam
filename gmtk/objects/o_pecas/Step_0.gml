spd = approach(spd,0,0.1);

x += lengthdir_x(spd,dir);
y += lengthdir_y(spd,dir);

lifetime--;

if(lifetime <= 0){
	instance_destroy();
}

image_alpha = lifetime/lifetime_atual;