/// @file	
///	@ingroup 	minexamples
///	@copyright	Copyright (c) 2016, Cycling '74
/// @author		Timothy Place
///	@license	Usage of this file and its contents is governed by the MIT License

#include "c74_min.h"

using namespace c74::min;

template<class derived_min_class_type>
class ease_base : public object<derived_min_class_type> {
public:

	// define an optional argument for setting the message
	argument<number> function_arg	{ this, "function", "Initial easing function to use.",
		MIN_ARGUMENT_FUNCTION {
			easing_function = arg;
		}
	};

	argument<number> inlow_arg { this, "input_range[low]", "Initial low value for the input range.",
		MIN_ARGUMENT_FUNCTION {
			(numbers(input_range))[0] = arg;
		}
	};

	argument<number> inhigh_arg { this, "input_range[high]", "Initial high value for the input range.",
		MIN_ARGUMENT_FUNCTION {
			(numbers(input_range))[1] = arg;
		}
	};

	argument<number> outlow_arg { this, "output_range[low]", "Initial low value for the output range.",
		MIN_ARGUMENT_FUNCTION {
			(numbers(output_range))[0] = arg;
		}
	};

	argument<number> outhigh_arg { this, "output_range[high]", "Initial high value for the output range.",
		MIN_ARGUMENT_FUNCTION {
			(numbers(output_range))[1] = arg;
		}
	};



	attribute<easing::function> easing_function { this, "function", easing::function::linear, easing::function_info,
		description { "Easing function to be applied or generated." }
	};

	attribute<numbers> input_range { this, "input_range", {0.0, 1.0},
		description { "Expected numeric range for the input." }
	};

	attribute<numbers> output_range { this, "output_range", {0.0, 1.0},
		description { "Expected numeric range for the output." }
	};


protected:
	number apply_easing_function(number input) {
		numbers input_range = this->input_range;
		numbers output_range = this->input_range;

		assert(input_range.size() == 2);	// TODO: enforce in the attribute<> class
		assert(output_range.size() == 2);	// TODO: enforce in the attribute<> class

		number diff = (input_range[1] - input_range[0]);
		number scale = (diff > DBL_EPSILON || diff < -DBL_EPSILON) ? 1.0 / diff : 1.0 / DBL_EPSILON;
		number x = (input - input_range[0]) * scale;
		number y = easing::apply(easing_function, x);

		return (y * (output_range[1] - output_range[0])) + output_range[0];
	}

};
