/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease : public ease_base<ease>, public sample_operator<1, 1> {
public:
	MIN_DESCRIPTION {"Generate or apply an easing function."};
	MIN_TAGS {"ease, functions"};
	MIN_AUTHOR {"Cycling '74"};
	MIN_RELATED {"ease, list.ease, jit.ease, ease.xfade, ease.xfade~, line, line~, curve~"};

	inlet<>  input {this, "(signal) apply easing function, (list) generate easing function."};
	outlet<> output {this, "(signal) easing function", "signal"};

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	sample operator()(sample x) {
		return apply_easing_function(x);
	}
};

MIN_EXTERNAL(ease);
