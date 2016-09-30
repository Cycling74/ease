/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright (c) 2016, Cycling '74
/// @author		Timothy Place
///	@license	Usage of this file and its contents is governed by the MIT License

#include "../ease_base.h"

class ease : public ease_base<ease>, public matrix_operator {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "functions, timing" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "ease, list.ease, ease~, line, line~, curve~" };

	inlet	input	{ this, "(matrix) apply easing function.", "matrix" };
	outlet	output	{ this, "(matrix) easing function", "matrix" };

	template<class matrix_type, size_t planecount>
	cell<matrix_type,planecount> calc_cell(cell<matrix_type,planecount> input, const matrix_info& info, matrix_coord& position) {
		cell<matrix_type,planecount> output;

		for (auto plane=0; plane<info.planecount(); ++plane)
			output[plane] = apply_easing_function(input[plane]);
		return output;
	}
};

MIN_EXTERNAL(ease);
