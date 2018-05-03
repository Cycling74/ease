/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease_xfade_tilde : public ease_base<ease_xfade_tilde>, public sample_operator<3, 1> {
public:
	MIN_DESCRIPTION {"Use an easing function to interpolate between two sample values."};
	MIN_TAGS {"ease, functions"};
	MIN_AUTHOR {"Cycling '74"};
	MIN_RELATED {"ease, ease~, list.ease, jit.ease, ease.xfade, line, line~, curve~"};

	inlet<>  in_position {this, "(signal) normalized position"};
	inlet<>  in_origin {this, "(signal/number) origin"};
	inlet<>  in_target {this, "(signal/number) target"};
	outlet<> output {this, "(signal) current interpolation", "signal"};

	ease_xfade_tilde(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	message<threadsafe::yes> number {this, "number", "Set the normalized position in the function.",
		MIN_FUNCTION {
			switch (inlet) {
				case 0:
					break;
				case 1:
					m_origin = args[0];
					break;
				case 2:
					m_target = args[0];
					break;
				default:
					assert(false);
			}
			return {};
		}};

	sample operator()(sample position, sample an_origin, sample a_target) {
		auto   position1 = apply_easing_function(position);
		auto   position2 = 1.0 - position1;
		double origin;
		double target;

		if (in_origin.has_signal_connection())
			origin = an_origin;
		else
			origin = m_origin;

		if (in_target.has_signal_connection())
			target = a_target;
		else
			target = m_target;

		return position2 * origin + position1 * target;
	}

private:
	double m_origin {0.0};
	double m_target {0.0};
};

MIN_EXTERNAL(ease_xfade_tilde);
