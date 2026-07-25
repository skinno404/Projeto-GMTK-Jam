function array_min(_array){

	///@param array

	var _min = _array[0];

	for (var i = 0; i < array_length(_array); i ++ ) {

		if _array[i] < _min{

			_min = _array[i];

		}

	}

	return _min;

}

function array_max(_array){

	///@param array

	var _max = _array[0];

	for (var i = 0; i < array_length(_array); i ++ ) {

		if _array[i] > _max{

			_max = _array[i];

		}

	}

	return _max;

}