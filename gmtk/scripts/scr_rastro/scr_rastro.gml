globalvar rastro_lista;
rastro_lista = [];

function aplicar_rastro_dash(_cor = c_aqua, _velocidade_sumir = 0.02, _sprite_escolhida = sprite_index) {
	// 1. Salva os dados do objeto usando a sprite escolhida
	var _dados = {
		sprite: _sprite_escolhida, // Usa a sprite que você escolheu mandar
		image: image_index,
		x: x, y: y,
		xscale: image_xscale, yscale: image_yscale,
		angle: image_angle,
		alpha: 0.8
	};
	
	// Adiciona a cópia na lista global
	array_insert(rastro_lista, 0, _dados);
	
	// 2. Desenha e atualiza todos os fantasmas da lista
	for (var _i = array_length(rastro_lista) - 1; _i >= 0; _i--) {
		var _f = rastro_lista[_i];
		
		// Diminui o alpha
		_f.alpha -= _velocidade_sumir;
		
		// Se ainda estiver visível, desenha na tela
		if (_f.alpha > 0) {
			draw_sprite_ext(_f.sprite, _f.image, _f.x, _f.y, _f.xscale, _f.yscale, _f.angle, _cor, _f.alpha);
		} else {
			// Se sumiu, remove da lista
			array_delete(rastro_lista, _i, 1);
		}
	}
}
