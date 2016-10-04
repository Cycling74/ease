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

	argument<number> function_arg	{ this, "function", "Initial easing function to use." };
	argument<number> inlow_arg		{ this, "input_range[low]", "Initial low value for the input range." };
	argument<number> inhigh_arg		{ this, "input_range[high]", "Initial high value for the input range." };
	argument<number> outlow_arg		{ this, "output_range[low]", "Initial low value for the output range." };
	argument<number> outhigh_arg	{ this, "output_range[high]", "Initial high value for the output range." };

	attribute<easing::function> easing_function { this, "function", easing::function::linear, easing::function_info,
		description { "Easing function to be applied or generated." }
	};

	attribute<numbers> input_range { this, "input_range", {0.0, 1.0},
		description { "Expected numeric range for the input." },
		setter { MIN_FUNCTION {
			return range_attr_arg_check(args);
		}}
	};

	attribute<numbers> output_range { this, "output_range", {0.0, 1.0},
		description { "Expected numeric range for the output." },
		setter { MIN_FUNCTION {
			return range_attr_arg_check(args);
		}}
	};


protected:

	/// Parse arguments a user typed in the object box to initialize the object correctly.
	/// @param	args	The arguments

	void handle_object_arguments(const atoms& args) {
		int offset = 0;
		int count = args.size();

		// if there are an odd number of args then the first arg is the function
		// either as a symbol or an index

		if (count % 2) {
			if (args[0].a_type == c74::max::A_SYM)
				easing_function = symbol(args[0]);
			else
				easing_function = args[0];

			offset = 1;
			--count;
		}

		numbers& input_range = this->input_range;
		numbers& output_range = this->output_range;

		if (count == 0)
			;
		else if (count == 2) {				// if there are two args they are the min/max range for the output
			output_range[0] = args[0+offset];
			output_range[1] = args[1+offset];
		}
		else if (count == 4) {		// if there are four args they are the min/max range for the input and the output
			input_range[0] = args[0+offset];
			input_range[1] = args[1+offset];
			output_range[0] = args[2+offset];
			output_range[1] = args[3+offset];
		}
		else
			error("incorrect argument list for object");
	}


	/// Utility for both range attributes to ensure valid values
	/// @param	args	The arguments to check.
	/// @return			The arguments with potential alterations.

	atoms range_attr_arg_check(const atoms& args) {
		if (args.size() == 1)
			return { 0.0, args[0] };
		else if (args.size() == 2)
			return args;
		else {
			this->cerr << "incorrect number of arguments for @input_range" << endl;
			return { 0.0, 1.0 };
		}
	}


	/// Apply the easing function and additional scaling to an input value.
	/// Both the function and the scaling ranges are defined by the attributes above.
	/// @param	input	The input to the scaling and easing functions.
	///	@return			The calculated output.

	number apply_easing_function(number input) {
		const numbers& input_range = this->input_range;
		const numbers& output_range = this->output_range;

		assert(input_range.size() == 2);
		assert(output_range.size() == 2);

		number diff = (input_range[1] - input_range[0]);
		number scale = (diff > DBL_EPSILON || diff < -DBL_EPSILON) ? 1.0 / diff : 1.0 / DBL_EPSILON;
		number x = (input - input_range[0]) * scale;
		number y = easing::apply(easing_function, x);

		return (y * (output_range[1] - output_range[0])) + output_range[0];
	}

};
