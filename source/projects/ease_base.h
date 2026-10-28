/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <algorithm>
#include <atomic>

using namespace c74::min;

template<class derived_min_class_type>
class ease_base : public object<derived_min_class_type> {
private:
	// Copies of the range attributes for the audio thread, which must not read the vectors while the main thread replaces them.
	// Declared before the attributes because their setters run during construction.
	std::atomic<number> m_in_low {0.0};
	std::atomic<number> m_in_high {1.0};
	std::atomic<number> m_out_low {0.0};
	std::atomic<number> m_out_high {1.0};
	std::atomic<number> m_amount {1.0};

public:
	argument<number> function_arg {this, "function", "Initial easing function to use."};
	argument<number> inlow_arg {this, "input_range[low]", "Initial low value for the input range."};
	argument<number> inhigh_arg {this, "input_range[high]", "Initial high value for the input range."};
	argument<number> outlow_arg {this, "output_range[low]", "Initial low value for the output range."};
	argument<number> outhigh_arg {this, "output_range[high]", "Initial high value for the output range."};

	attribute<lib::easing::function> easing_function {this, "function",
		lib::easing::function::linear,
		lib::easing::function_info,
		description {"Easing function to be applied or generated."},
		setter { MIN_FUNCTION {
			easing_function_pending = true;
			current_function = args[0];

			if (initializing) {
				previous_function = current_function;
				initializing = false;
			}

			return args;
		}}};

	attribute<numbers> input_range {this, "input_range", {0.0, 1.0},
		description {"Expected numeric range for the input."},
		setter { MIN_FUNCTION {
			auto range = range_attr_arg_check(args);
			m_in_low   = range[0];
			m_in_high  = range[1];
			return range;
		}}};

	attribute<numbers> output_range {this, "output_range", {0.0, 1.0},
		description {"Expected numeric range for the output."},
		setter { MIN_FUNCTION {
			auto range = range_attr_arg_check(args);
			m_out_low  = range[0];
			m_out_high = range[1];
			return range;
		}}};

	attribute<number, threadsafe::no, limit::clamp> amount {this, "amount", 1.0, range {0.0, 1.0},
		description {"Mix between linear (0) and the easing function (1)."},
		setter { MIN_FUNCTION {
			m_amount = args[0];
			return args;
		}}};

	attribute<bool> clip {this, "clip", false,
		description {"Constrain the output to the output range."}
	};

	attribute<bool> syncupdate {this, "syncupdate", false,
		description { "Change the function only after the input changes direction/resets phase." }
	};


protected:
	/// Parse arguments a user typed in the object box to initialize the object correctly.
	/// @param	args	The arguments

	void handle_object_arguments(const atoms& args) {
		int offset = 0;
		int count  = args.size();

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

		if (count == 0)
			;
		else if (count == 2) {    // if there are two args they are the min/max range for the output
			output_range = atoms{ args[0 + offset], args[1 + offset] };
		}
		else if (count == 4) {    // if there are four args they are the min/max range for the input and the output
			input_range  = atoms{ args[0 + offset], args[1 + offset] };
			output_range = atoms{ args[2 + offset], args[3 + offset] };
		}
		else
			error("incorrect argument list for object");
	}


	/// Utility for both range attributes to ensure valid values
	/// @param	args	The arguments to check.
	/// @return			The arguments with potential alterations.

	atoms range_attr_arg_check(const atoms& args) {
		if (args.size() == 1)
			return {0.0, args[0]};
		else if (args.size() == 2)
			return args;
		else {
			this->cerr << "incorrect number of arguments for @input_range" << endl;
			return {0.0, 1.0};
		}
	}


	/// Apply the easing function and additional scaling to an input value.
	/// Both the function and the scaling ranges are defined by the attributes above.
	/// @param	input	The input to the scaling and easing functions.
	///	@return			The calculated output.

	number apply_easing_function(number input) {
		history[history_index] = input;
		history_index = (history_index + 1) % history.size();

		// Bail out early if we don't need to do logic for pending easing functions
		if (!syncupdate) {
			return apply_easing_function(input, current_function);
		}

		// Otherwise, we need to see which easing function to use.
		if (easing_function_pending) {
			if (history_changed_direction()) {
				// It's time to switch
				easing_function_pending = false;
				previous_function = current_function;
			}
			else {
				// There's a function pending, but it's not ready yet
				return apply_easing_function(input, previous_function);
			}
		}

		return apply_easing_function(input, current_function);
	}


private:
	bool initializing = true;
	bool easing_function_pending = false;
	lib::easing::function previous_function;
	lib::easing::function current_function;
	std::array<number, 3> history = { 0, 0, 0 };
	int history_index = 0;

	bool history_changed_direction() {
		// history[n]
		int i = history_index - 1;
		int n = history.size();
		number z = history[(i + n) % n];

		// history[n - 1]
		number y       = history[(i + n - 1) % n];

		// history[n - 2]
		number x       = history[(i + n - 2) % n];

		if (((z - y) > 0.0 && (y - x) < 0.0) || ((z - y) < 0.0 && (y - x) > 0.0)) {
			return true;
		}
		else {
			return false;
		}
	}

	number apply_easing_function(number input, lib::easing::function fn) {
		number in_low   = m_in_low;
		number out_low  = m_out_low;
		number diff     = m_in_high - in_low;
		number scale    = (diff > DBL_EPSILON || diff < -DBL_EPSILON) ? 1.0 / diff : 1.0 / DBL_EPSILON;
		number x        = (input - in_low) * scale;
		number y        = x + m_amount * (lib::easing::apply(fn, x) - x);
		number out_high = m_out_high;
		number output   = (y * (out_high - out_low)) + out_low;

		if (clip)
			output = std::clamp(output, std::min(out_low, out_high), std::max(out_low, out_high));
		return output;
	}
};
