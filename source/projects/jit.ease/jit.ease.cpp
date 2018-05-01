/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease : public ease_base<ease>, public matrix_operator<> {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "ease, functions" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "ease, list.ease, ease~, ease.xfade, ease.xfade~, line, line~, curve~" };

	inlet<>		input	{ this, "(matrix) apply easing function.", "matrix" };
	outlet<>	output	{ this, "(matrix) easing function", "matrix" };

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	template<class matrix_type, size_t planecount>
	cell<matrix_type,planecount> calc_cell(cell<matrix_type,planecount> input, const matrix_info& info, matrix_coord& position) {
		cell<matrix_type,planecount> output;

		for (auto plane=0; plane<info.plane_count(); ++plane)
			output[plane] = apply_easing_function(input[plane]);
		return output;
	}
};

MIN_EXTERNAL(ease);
