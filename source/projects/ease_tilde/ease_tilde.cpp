/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright (c) 2016, Cycling '74
/// @author		Timothy Place
///	@license	Usage of this file and its contents is governed by the MIT License

#include "../ease_base.h"


class ease : public ease_base<ease>, public sample_operator<1,1> {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "functions, timing" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "ease, jit.ease, line, line~, curve~" };

	inlet	input	{ this, "(signal) apply easing function, (list) generate easing function." };
	outlet	output	{ this, "(signal) easing function", "signal" };


	argument<number> function_arg	{ this, "function", "Initial easing function to use.",
		MIN_ARGUMENT_FUNCTION {
			easing_function = arg;
		}
	};


	sample operator()(sample x) {
		return apply_easing_function(x);
	}

};


MIN_EXTERNAL(ease);
