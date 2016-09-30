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


	enum class easing : long {
		linear,

		in_back,
		in_bounce,
		in_circular,
		in_cubic,
		in_elastic,
		in_exponential,
		in_quadratic,
		in_quartic,
		in_quintic,
		in_sine,

		in_out_back,
		in_out_bounce,
		in_out_circular,
		in_out_cubic,
		in_out_elastic,
		in_out_exponential,
		in_out_quadratic,
		in_out_quartic,
		in_out_quintic,
		in_out_sine,

		out_back,
		out_bounce,
		out_circular,
		out_cubic,
		out_elastic,
		out_exponential,
		out_Quadratic,
		out_quartic,
		out_quintic,
		out_sine,

		enum_count
	};

	enum_map easing_info = {
		"linear",

		"in_back",
		"in_bounce",
		"in_circular",
		"in_cubic",
		"in_elastic",
		"in_exponential",
		"in_quadratic",
		"in_quartic",
		"in_quintic",
		"in_sine",

		"in_out_back",
		"in_out_bounce",
		"in_out_circular",
		"in_out_cubic",
		"in_out_elastic",
		"in_out_exponential",
		"in_out_quadratic",
		"in_out_quartic",
		"in_out_quintic",
		"in_out_sine",

		"out_back",
		"out_bounce",
		"out_circular",
		"out_cubic",
		"out_elastic",
		"out_exponential",
		"out_quadratic",
		"out_quartic",
		"out_quintic",
		"out_sine"
	};

	attribute<easing> easing_function { this, "function", easing::linear, easing_info,
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

		number y = 0.0;
		number diff = (input_range[1] - input_range[0]);
		number scale = (diff > DBL_EPSILON || diff < -DBL_EPSILON) ? 1.0 / diff : 1.0 / DBL_EPSILON;
		number x = (input - input_range[0]) * scale;

		switch (easing_function) {
			case easing::linear:
				y = x;
				break;
			case easing::in_back:
				//  Modeled after the overshooting cubic y = x^3-x*sin(x*pi)
				y = x * x * x - x * sin(x * M_PI);
				break;
			case easing::in_out_back:
				// Modeled after the piecewise overshooting cubic function:
				// *  y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5)
				// *  y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1] @n
				if (x < 0.5) {
					double f = 2 * x;
					y = 0.5 * (f * f * f - f * sin(f * M_PI));
				}
				else {
					double f = (1 - (2*x - 1));
					y = 0.5 * (1 - (f * f * f - f * sin(f * M_PI))) + 0.5;
				}
				break;
			case easing::out_back: {
				// Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
				double f = 1.0 - x;
				y = 1 - (f * f * f - f * sin(f * M_PI));
			}
				break;
			case easing::in_bounce: {
				double f = 1.0 - x;
				double y;

				if (f < 4/11.0)
					y = (121 * f * f)/16.0;
				else if (f < 8/11.0)
					y = (363/40.0 * f * f) - (99/10.0 * f) + 17/5.0;
				else if (f < 9/10.0)
					y = (4356/361.0 * f * f) - (35442/1805.0 * f) + 16061/1805.0;
				else
					y = (54/5.0 * f * f) - (513/25.0 * f) + 268/25.0;
				y = 1.0 - y;
			}
				break;
			case easing::in_out_bounce: {
				if (x < 0.5) {
					double f = 1 - 2 * x;
					double y;

					if (f < 4/11.0)
						y = (121 * f * f)/16.0;
					else if (f < 8/11.0)
						y = (363/40.0 * f * f) - (99/10.0 * f) + 17/5.0;
					else if (f < 9/10.0)
						y = (4356/361.0 * f * f) - (35442/1805.0 * f) + 16061/1805.0;
					else
						y = (54/5.0 * f * f) - (513/25.0 * f) + 268/25.0;
					y = 0.5 * (1 - y);
				}
				else {
					double f = x * 2 - 1;
					double y;

					if (f < 4/11.0)
						y = (121 * f * f)/16.0;
					else if (f < 8/11.0)
						y = (363/40.0 * f * f) - (99/10.0 * f) + 17/5.0;
					else if (f < 9/10.0)
						y = (4356/361.0 * f * f) - (35442/1805.0 * f) + 16061/1805.0;
					else
						y = (54/5.0 * f * f) - (513/25.0 * f) + 268/25.0;
					y = 0.5 * y + 0.5;
				}
			}
				break;
			case easing::out_bounce:
				if (x < 4/11.0)
					y = (121 * x * x)/16.0;
				else if (x < 8/11.0)
					y = (363/40.0 * x * x) - (99/10.0 * x) + 17/5.0;
				else if (x < 9/10.0)
					y = (4356/361.0 * x * x) - (35442/1805.0 * x) + 16061/1805.0;
				else
					y = (54/5.0 * x * x) - (513/25.0 * x) + 268/25.0;
				break;
			case easing::in_circular:
				y = 1 - sqrt(1 - (x * x));
				break;
			case easing::in_out_circular:
				if (x < 0.5)
					y = 0.5 * (1 - sqrt(1 - 4 * (x * x)));
				else
					y = 0.5 * (sqrt(-((2 * x) - 3) * ((2 * x) - 1)) + 1);
				break;
			case easing::out_circular:
				y = sqrt((2 - x) * x);
				break;
			case easing::in_cubic:
				y = x * x * x;
				break;
			case easing::in_out_cubic:
				if (x < 0.5)
					y = 4 * x * x * x;
				else {
					double f = ((2 * x) - 2);
					y = 0.5 * f * f * f + 1;
				}
				break;
			case easing::out_cubic:
				y = x * x * x + 1;
				break;
			case easing::in_elastic:
				y = sin(6.5 * M_PI * x) * pow(2, 10 * (x - 1));
				break;
			case easing::in_out_elastic:
				if (x < 0.5)
					y = 0.5 * sin(6.5 * M_PI * (2 * x)) * pow(2, 10 * ((2 * x) - 1));
				else
					y = 0.5 * (sin(-6.5 * M_PI * ((2 * x - 1) + 1)) * pow(2, -10 * (2 * x - 1)) + 2);
				break;
			case easing::out_elastic:
				y = sin(-6.5 * M_PI * (x + 1)) * pow(2, -10 * x) + 1;
				break;
			case easing::in_exponential:
				if (x == 0.0)
					y = x;
				else
					y = pow(2, 10 * (x - 1));
				break;
			case easing::in_out_exponential:
				if (x == 0.0 || x == 1.0)
					y = x;
				else if(x < 0.5)
					y = 0.5 * pow(2, (20 * x) - 10);
				else
					y = -0.5 * pow(2, (-20 * x) + 10) + 1;
				break;
			case easing::out_exponential:
				if (x == 1.0)
					y = x;
				else
					y = 1 - pow(2, -10 * x);
				break;
			case easing::in_quadratic:
				y = x * x;
				break;
			case easing::in_out_quadratic:
				if (x < 0.5)
					y = 2 * x * x;
				else
					y = (-2 * x * x) + (4 * x) - 1;
				break;
			case easing::out_Quadratic:
				y = -(x * (x - 2));
				break;
			case easing::in_quartic:
				y = x * x * x * x;
				break;
			case easing::in_out_quartic:
				if (x < 0.5)
					y = 8 * x * x * x * x;
				else {
					double f = (x - 1);
					y = -8 * f * f * f * f + 1;
				}
				break;
			case easing::out_quartic: {
				double f = (x - 1);
				y = f * f * f * (1 - x) + 1;
			}
				break;
			case easing::in_quintic:
				y = x * x * x * x * x;
				break;
			case easing::in_out_quintic:
				if (x < 0.5)
					y = 16 * x * x * x * x * x;
				else {
					double f = ((2 * x) - 2);
					y = 0.5 * f * f * f * f * f + 1;
				}
				break;
			case easing::out_quintic: {
				double f = (x - 1);
				y = f * f * f * f * f + 1;
			}
				break;
			case easing::in_sine:
				y = sin((x - 1) * M_PI * 0.5) + 1;
				break;
			case easing::in_out_sine:
				y = 0.5 * (1 - cos(x * M_PI));
				break;
			case easing::out_sine:
				y = sin(x * M_PI * 0.5);
				break;
			case easing::enum_count:
				break;
		}
		return (y * (output_range[1] - output_range[0])) + output_range[0];
	}

};
