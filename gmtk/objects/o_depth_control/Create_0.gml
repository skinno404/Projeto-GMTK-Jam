#macro TAG_DEPTHSORT "depthsort"

asset_add_tags(obj_player, TAG_DEPTHSORT, asset_object);
asset_add_tags(obj_enemy_drone, TAG_DEPTHSORT, asset_object);
asset_add_tags(obj_enemy_robot, TAG_DEPTHSORT, asset_object);
asset_add_tags(obj_enemy, TAG_DEPTHSORT, asset_object);
asset_add_tags(obj_enemy_atk, TAG_DEPTHSORT, asset_object);
asset_add_tags(obj_player_atk, TAG_DEPTHSORT, asset_object);
asset_add_tags(o_dummy, TAG_DEPTHSORT, asset_object);
asset_add_tags(o_help_robot, TAG_DEPTHSORT, asset_object);
asset_add_tags(o_teste, TAG_DEPTHSORT, asset_object);
asset_add_tags(o_enemy_dead, TAG_DEPTHSORT, asset_object);
asset_add_tags(o_pecas, TAG_DEPTHSORT, asset_object);

depth_grid = ds_grid_create(2, 0);
depth_array = tag_get_asset_ids(TAG_DEPTHSORT,asset_object);
for (var i = 0; i < array_length(depth_array); i++){
	var obj = depth_array[i]
	//	seta para os q ja existem
	with (obj) {visible = false}
	//	seta para os que forem criados
	object_set_visible(obj, false);
}


depthsort = function(){
	
	//	aumenta a ds grid
	var len = array_length(depth_array)
	var inst_count = 0;
	for (var i = 0; i < len;i++){
		for (var j = 0;j < instance_number(depth_array[i]); j++){
			
			inst_count++;
			
		}
		
	}
	
	ds_grid_resize(depth_grid, 2, inst_count);
	
	//	pega as instancias com a tag e salva ela na grid e depois ordena a grid
	var grid_pos = 0;
	for (var i = 0; i < len; i++){
		for (var j = 0; j < instance_number(depth_array[i]); j ++){
			var inst = instance_find(depth_array[i], j)

	depth_grid[# 0, grid_pos] = inst.id;
	
if(variable_instance_exists(inst,"always_top") && inst.always_top == true){
	if(instance_exists(obj_player)){
		depth_grid[# 1, grid_pos] = obj_player.y + 1;	
	}else{
		depth_grid[# 1, grid_pos] = inst.y;	
	}
}else{
	depth_grid[# 1, grid_pos] = inst.y;	
}

			grid_pos ++;
		}
	}
	ds_grid_sort(depth_grid, 1, true);
	
	//	desenha as instancias da grid ordenadamente
	for (var i = 0; i < ds_grid_height(depth_grid); i++){
		
		var inst = depth_grid[# 0, i];
		with (inst) {
		
			event_perform(ev_draw, 0);
			
		
		}
		
	}
}
