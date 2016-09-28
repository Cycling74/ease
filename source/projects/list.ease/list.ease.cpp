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
	MIN_RELATED		{ "ease, ease~, jit.ease, line, line~, curve~" };
	
	inlet	input	{ this, "(list) apply easing function." };
	outlet	output	{ this, "(list) easing function" };


	// define an optional argument for setting the message
	argument<number> function_arg	{ this, "function", "Initial easing function to use.",
		MIN_ARGUMENT_FUNCTION {
			easing_function = arg;
		}
	};

	// respond to the bang message to do something
	message list_message { this, "list", "Input to easing function.",
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
