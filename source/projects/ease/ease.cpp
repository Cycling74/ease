/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease : public ease_base<ease> {
public:
	MIN_DESCRIPTION {"Generate or apply an easing function."};
	MIN_TAGS {"ease, functions"};
	MIN_AUTHOR {"Cycling '74"};
	MIN_RELATED {"list.ease, ease~, jit.ease, ease.xfade, ease.xfade~, line, line~, curve~"};

	inlet<>  input {this, "(float) apply easing function, (list) generate easing function."};
	outlet<> output {this, "(float) easing function"};

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	message<threadsafe::yes> number_message {this, "number", "Input value to easing function.",
		MIN_FUNCTION {
			output.send(apply_easing_function(args[0]));
			return {};
		}};
};

MIN_EXTERNAL(ease);
