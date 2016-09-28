/// @file	
///	@ingroup 	minexamples
///	@copyright	Copyright (c) 2016, Cycling '74
/// @author		Timothy Place
///	@license	Usage of this file and its contents is governed by the MIT License

#include "c74_min.h"

using namespace c74::min;

class ease : public object<ease> {
public:

	MIN_DESCRIPTION { "Generate or apply an easing function." };
	MIN_TAGS		{ "functions, timing" };
	MIN_AUTHOR		{ "Cycling '74" };
	MIN_RELATED		{ "ease~, jit.ease, line, line~, curve~" };
	
	inlet	input	{ this, "(float) apply easing function, (list) generate easing function." };
	outlet	output	{ this, "(float) easing function" };


	// define an optional argument for setting the message
	argument<number> function_arg	{ this, "function", "Initial easing function to use.",
		MIN_ARGUMENT_FUNCTION {
			easing_function = arg;
		}
	};


	enum class easing {
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


	// respond to the bang message to do something
	message number_message { this, "number", "Input value to easing function.",
		MIN_FUNCTION {
			output.send( apply_easing_function(args[0]) );
			return {};
		}
	};

private:
	number apply_easing_function(number x) {
		switch (easing_function) {
			case easing::linear:
				return x;
			case easing::in_back:
				//  Modeled after the overshooting cubic y = x^3-x*sin(x*pi)
				return x * x * x - x * sin(x * M_PI);
			case easing::in_out_back:
				// Modeled after the piecewise overshooting cubic function:
				// *  y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5)
				// *  y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1] @n
				if (x < 0.5) {
					double f = 2 * x;
					return 0.5 * (f * f * f - f * sin(f * M_PI));
				}
				else {
					double f = (1 - (2*x - 1));
					return 0.5 * (1 - (f * f * f - f * sin(f * M_PI))) + 0.5;
				}
			case easing::out_back: {
				// Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
				double f = 1.0 - x;
				return 1 - (f * f * f - f * sin(f * M_PI));
			}
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
				return 1.0 - y;
			}
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
					return 0.5 * (1 - y);
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
					return 0.5 * y + 0.5;
				}
			}
			case easing::out_bounce:
				if (x < 4/11.0)
					return (121 * x * x)/16.0;
				else if (x < 8/11.0)
					return (363/40.0 * x * x) - (99/10.0 * x) + 17/5.0;
				else if (x < 9/10.0)
					return (4356/361.0 * x * x) - (35442/1805.0 * x) + 16061/1805.0;
				else
					return (54/5.0 * x * x) - (513/25.0 * x) + 268/25.0;
			case easing::in_circular:
				return 1 - sqrt(1 - (x * x));
			case easing::in_out_circular:
				if (x < 0.5)
					return 0.5 * (1 - sqrt(1 - 4 * (x * x)));
				else
					return 0.5 * (sqrt(-((2 * x) - 3) * ((2 * x) - 1)) + 1);
			case easing::out_circular:
				return sqrt((2 - x) * x);
			case easing::in_cubic:
				return x * x * x;
			case easing::in_out_cubic:
				if (x < 0.5)
					return 4 * x * x * x;
				else {
					double f = ((2 * x) - 2);
					return 0.5 * f * f * f + 1;
				}
			case easing::out_cubic:
				return x * x * x + 1;
			case easing::in_elastic:
				return sin(6.5 * M_PI * x) * pow(2, 10 * (x - 1));
			case easing::in_out_elastic:
				if (x < 0.5)
					return 0.5 * sin(6.5 * M_PI * (2 * x)) * pow(2, 10 * ((2 * x) - 1));
				else
					return 0.5 * (sin(-6.5 * M_PI * ((2 * x - 1) + 1)) * pow(2, -10 * (2 * x - 1)) + 2);
			case easing::out_elastic:
				return sin(-6.5 * M_PI * (x + 1)) * pow(2, -10 * x) + 1;
			case easing::in_exponential:
				if (x == 0.0)
					return x;
				else
					return pow(2, 10 * (x - 1));
			case easing::in_out_exponential:
				if (x == 0.0 || x == 1.0)
					return x;
				else if(x < 0.5)
					return 0.5 * pow(2, (20 * x) - 10);
				else
					return -0.5 * pow(2, (-20 * x) + 10) + 1;
			case easing::out_exponential:
				if (x == 1.0)
					return x;
				else
					return 1 - pow(2, -10 * x);
			case easing::in_quadratic:
				return x * x;
			case easing::in_out_quadratic:
				if (x < 0.5)
					return 2 * x * x;
				else
					return (-2 * x * x) + (4 * x) - 1;
			case easing::out_Quadratic:
				return -(x * (x - 2));
			case easing::in_quartic:
				return x * x * x * x;
			case easing::in_out_quartic:
				if (x < 0.5)
					return 8 * x * x * x * x;
				else {
					double f = (x - 1);
					return -8 * f * f * f * f + 1;
				}
			case easing::out_quartic: {
				double f = (x - 1);
				return f * f * f * (1 - x) + 1;
			}
			case easing::in_quintic:
				return x * x * x * x * x;
			case easing::in_out_quintic:
				if (x < 0.5)
					return 16 * x * x * x * x * x;
				else {
					double f = ((2 * x) - 2);
					return 0.5 * f * f * f * f * f + 1;
				}
			case easing::out_quintic: {
				double f = (x - 1);
				return f * f * f * f * f + 1;
			}
			case easing::in_sine:
				return sin((x - 1) * M_PI * 0.5) + 1;
			case easing::in_out_sine:
				return 0.5 * (1 - cos(x * M_PI));
			case easing::out_sine:
				return sin(x * M_PI * 0.5);
			default:
				return 0.0;
		}
	}

};


MIN_EXTERNAL(ease);
