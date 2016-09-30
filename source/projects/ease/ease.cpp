/// @file	
///	@ingroup 	minexamples
///	@copyright	Copyright (c) 2016, Cycling '74
/// @author		Timothy Place
///	@license	Usage of this file and its contents is governed by the MIT License

#include "../ease_base.h"

class ease : public ease_base<ease> {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "functions, timing" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "list.ease, ease~, jit.ease, line, line~, curve~" };
	
	inlet	input	{ this, "(float) apply easing function, (list) generate easing function." };
	outlet	output	{ this, "(float) easing function" };

	message number_message { this, "number", "Input value to easing function.",
		MIN_FUNCTION {
			output.send( apply_easing_function(args[0]) );
			return {};
		}
	};
};

MIN_EXTERNAL(ease);
