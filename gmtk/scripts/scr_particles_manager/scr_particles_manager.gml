
function scr_particles_manager(){
	var i = 0;
	while(i < array_length(global.particles)) {
		var p = global.particles[i];
		
		if(part_particles_count(p.sys) == 0) {
			part_type_destroy(p.type);
			
			part_system_destroy(p.sys);
			
			array_delete(global.particles, i,1);
		}else{
		i++;
		
		}
	}
}