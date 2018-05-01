/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease : public ease_base<ease> {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "ease, functions" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "ease, ease~, jit.ease, ease.xfade, ease.xfade~, line, line~, curve~" };
	
	inlet<>		input	{ this, "(list) apply easing function." };
	outlet<>	output	{ this, "(list) easing function" };

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	message<threadsafe::yes> list_message { this, "list", "Input to easing function.",
		MIN_FUNCTION {
			auto	count = args.size();
			atoms	result(count);

			for (auto i=0; i<args.size(); ++i)
				result[i] = apply_easing_function(args[i]);

			output.send( result );
			return {};
		}
	};
};

MIN_EXTERNAL(ease);
