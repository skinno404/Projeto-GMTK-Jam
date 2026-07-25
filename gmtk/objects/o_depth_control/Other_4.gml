
//0 id das instancias
//1 posicao das instancias

depth_grid = ds_grid_create(2, 0);
depth_array = tag_get_asset_ids(TAG_DEPTHSORT,asset_object);

for (var i = 0; i < array_length(depth_array); i++){
	var obj = depth_array[i]
	//	seta para os q ja existem
	with (obj) {visible = false}
	//	seta para os que forem criados
	object_set_visible(obj, false);
}
