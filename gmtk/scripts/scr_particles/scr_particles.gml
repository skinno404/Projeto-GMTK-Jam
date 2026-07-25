function scr_particle_smoke(x,y,dir,color1,color2){
	
var sys_smoke = part_system_create();
part_system_depth(sys_smoke,depth);

var type_smoke = part_type_create();
part_type_shape(type_smoke					,pt_shape_disk);
part_type_size(type_smoke					,0.020,0.09,0,0);
part_type_color2(type_smoke					,color1,color2);
part_type_alpha2(type_smoke					,0.6,0);
part_type_speed(type_smoke					,0.2,0.4,0,0);
part_type_direction(type_smoke				,dir - 60,dir + 90,0,0);
part_type_life(type_smoke					,4,10);
part_type_gravity(type_smoke					,0,270);

part_particles_create(sys_smoke,x,y,type_smoke,3);

array_push(global.particles,{sys : sys_smoke , type : type_smoke});
}

//////////////////////////////////////////////////////////////////

function scr_particle_line(x,y,dir,color1){
	
var sys_line = part_system_create();
part_system_depth(sys_line,depth);

var type_line = part_type_create();
part_type_shape(type_line					,pt_shape_explosion);
part_type_size(type_line					,0.3,0.4,0,0);
part_type_color1(type_line					,color1);
part_type_alpha2(type_line					,1,0);
part_type_speed(type_line					,0.2,0.4,0,0);
part_type_direction(type_line				,0,360,0,0);
part_type_life(type_line					,4,10);
part_type_gravity(type_line					,0,270);

part_particles_create(sys_line,x,y,type_line,3);

array_push(global.particles,{sys : sys_line , type : type_line});
}

//////////////////////////////////////////////////////////////////

function scr_particle_dust(x,y,dir,color1,color2){
	
var sys_dust = part_system_create();
part_system_depth(sys_dust,depth);

var type_dust = part_type_create();
part_type_shape(type_dust					,pt_shape_disk);
part_type_size(type_dust					,0.040,0.1,0,0);
part_type_color2(type_dust					,color1,color2);
part_type_alpha2(type_dust					,0.8,0);
part_type_speed(type_dust					,0.2,0.4,0,0);
part_type_direction(type_dust				,dir - 60,dir + 90,0,0);
part_type_life(type_dust					,8,25);
part_type_gravity(type_dust					,0.005,270);


part_particles_create(sys_dust,x,y,type_dust,2);

array_push(global.particles,{sys : sys_dust , type : type_dust});
}

//////////////////////////////////////////////////////////////////

function scr_particle_magic(x,y,dir,color1,color2){
	
var sys_magic = part_system_create();
part_system_depth(sys_magic,depth);

var type_magic = part_type_create();
part_type_shape(type_magic					,pt_shape_disk);
part_type_size(type_magic					,0.1,0.22,-0.01,0);
part_type_color2(type_magic					,color1,color2);
part_type_alpha2(type_magic					,0.8,0);
part_type_speed(type_magic					,0.2,0.6,0,0);
part_type_direction(type_magic				,dir - 120,dir + 120,5,0);
part_type_life(type_magic					,5,17);
part_type_gravity(type_magic				,0.001,270);


part_particles_create(sys_magic,x,y,type_magic,3);

array_push(global.particles,{sys : sys_magic , type : type_magic});
}

//////////////////////////////////////////////////////////////////

function scr_particle_damage(x,y,dir,color1,color2){
	
var sys_damage = part_system_create();
part_system_depth(sys_damage,depth);

var type_damage = part_type_create();
part_type_shape(type_damage					,pt_shape_disk);
part_type_size(type_damage					,0.05,0.1,0,0);
part_type_color2(type_damage				,color1,color2);
part_type_alpha2(type_damage				,0.9,0);
part_type_speed(type_damage					,0.8,2.3,-0.07,0);
part_type_direction(type_damage				,dir - 50,dir + 50,0,0);
part_type_life(type_damage					,20,25);
part_type_gravity(type_damage				,0.01,270);


part_particles_create(sys_damage,x,y,type_damage,2);

array_push(global.particles,{sys : sys_damage , type : type_damage});
}

//////////////////////////////////////////////////////////////////

function scr_particle_damage2(x,y,color1){
	
var sys_damage2 = part_system_create();
part_system_depth(sys_damage2,depth);

var type_damage2 = part_type_create();
part_type_shape(type_damage2				,pt_shape_disk);
part_type_size(type_damage2					,0.02,0.07,0,0);
part_type_color1(type_damage2				,color1);
part_type_alpha2(type_damage2				,1,0);
part_type_speed(type_damage2				,0.8,2,-0.05,0);
part_type_direction(type_damage2			,0,360,0,0);
part_type_life(type_damage2					,150,200);
part_type_gravity(type_damage2				,0.01,270);


part_particles_create(sys_damage2,x,y,type_damage2,5);

array_push(global.particles,{sys : sys_damage2 , type : type_damage2});
}

//////////////////////////////////////////////////////////////////

function scr_particle_project(x,y,color1){
	
var sys_project = part_system_create();
part_system_depth(sys_project,depth);

var type_project = part_type_create();
part_type_shape(type_project				,pt_shape_disk);
part_type_size(type_project					,0.01,0.06,0,0.01);
part_type_color1(type_project				,color1);
part_type_alpha2(type_project				,0.7,0);
part_type_speed(type_project				,0.8,2,-0.05,0);
part_type_direction(type_project			,0,360,0,0);
part_type_life(type_project					,3,9);
part_type_gravity(type_project				,0.01,270);


part_particles_create(sys_project,x,y,type_project,5);

array_push(global.particles,{sys : sys_project , type : type_project});
}

//////////////////////////////////////////////////////////////////

function scr_particle_slash(x,y,dir,color1){
	
var sys_slash = part_system_create();
part_system_depth(sys_slash,depth);

var type_slash = part_type_create();
part_type_shape(type_slash				,s_slash);
part_type_size(type_slash					,0.6,1,0,0.01);
part_type_color1(type_slash				,color1);
part_type_alpha2(type_slash				,1,0);
part_type_speed(type_slash				,0.5,1,-0.05,0);
part_type_direction(type_slash			,dir,dir,0,0);
part_type_life(type_slash					,50,100);
part_type_gravity(type_slash				,0,270);
part_type_orientation(type_slash				,0,90,0,0,0);


part_particles_create(sys_slash,x,y,type_slash,5);

array_push(global.particles,{sys : sys_slash , type : type_slash});
}

//////////////////////////////////////////////////////////////////

function scr_particle_proj_destroy(x,y,dir,color1,color2){
	
var sys_proj_destroy = part_system_create();
part_system_depth(sys_proj_destroy,depth);

var type_proj_destroy = part_type_create();
part_type_shape(type_proj_destroy			,pt_shape_disk);
part_type_size(type_proj_destroy			,0.05,0.10,+0.0005,0);
part_type_color2(type_proj_destroy			,color1,color2);
part_type_alpha2(type_proj_destroy			,1,0);
part_type_speed(type_proj_destroy			,0.3,0.6,0,0);
part_type_direction(type_proj_destroy		,dir - 360,dir + 360,0,0);
part_type_life(type_proj_destroy			,20,50);
part_type_gravity(type_proj_destroy			,0,0);


part_particles_create(sys_proj_destroy,x,y,type_proj_destroy,6);

array_push(global.particles,{sys : sys_proj_destroy , type : type_proj_destroy});
}

//////////////////////////////////////////////////////////////////

function scr_particle_proj_drop(x,y,dir,color1,color2){
	
var sys_proj_drop = part_system_create();
part_system_depth(sys_proj_drop,depth);

var type_proj_drop = part_type_create();
part_type_sprite(type_proj_drop				,s_proj_drop,0,0,0);
part_type_size(type_proj_drop				,1,1,0,0);
part_type_alpha2(type_proj_drop				,1,0);
part_type_speed(type_proj_drop				,2,3,-0.20,0);
part_type_color2(type_proj_drop				,color1,color2)
part_type_direction(type_proj_drop			,dir - 30,dir + 30,0,0);
part_type_orientation(type_proj_drop		,1,360,0,0,0);
part_type_life(type_proj_drop				,30,80);
part_type_gravity(type_proj_drop			,0.14,270);

part_particles_create(sys_proj_drop,x,y,type_proj_drop,1);

array_push(global.particles,{sys : sys_proj_drop , type : type_proj_drop});
}

//////////////////////////////////////////////////////////////////

function scr_particle_coin(x,y,dir,color1,min_size,max_size,alpha){
	
var sys_coin = part_system_create();
part_system_depth(sys_coin,depth=-1);

var type_coin = part_type_create();
part_type_shape(type_coin				,pt_shape_disk);
part_type_size(type_coin				,min_size,max_size,-0.004,0);
part_type_alpha2(type_coin				,alpha,0);
part_type_speed(type_coin				,1,2,-0.12,0);
part_type_color1(type_coin				,color1)
part_type_direction(type_coin			,dir - 30,dir + 30,0,0);
part_type_orientation(type_coin		,1,360,0,0,0);
part_type_life(type_coin				,15,40);
part_type_gravity(type_coin			,+0.14,90);

part_particles_create(sys_coin,x,y,type_coin,1);

array_push(global.particles,{sys : sys_coin , type : type_coin});
}
