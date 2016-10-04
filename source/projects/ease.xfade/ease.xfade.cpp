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
	MIN_RELATED		{ "ease, ease~, ease.xfade~, jit.ease, list.ease, line, line~, curve~" };
	
	inlet	input	{ this, "(list) new target or origin" };
	inlet	input2	{ this, "(float) easing function position." };
	outlet	output	{ this, "(list) eased output " };

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	message number_message { this, "number", "Normalized transition location.",
		MIN_FUNCTION {
			m_position = args[0];
			bang();
			return {};
		}
	};

// TODO: we crash if there is an empty string for a desc

	message bang { this, "bang", "Output",
		MIN_FUNCTION {
			auto position1 = apply_easing_function(m_position);
			auto position2 = 1.0 - position1;
			auto size = m_origin.size();

			m_current.resize(size);

			for (auto i=0; i<size; ++i)
				m_current[i] = position2 * m_origin[i]  +  position1 * m_target[i];

				atoms result = to_atoms(m_current);
			output.send(result);
			return {};
		}
	};

	message set_message { this, "set", "Set origin without output.",
		MIN_FUNCTION {
			m_origin = from_atoms<std::vector<double>>(args);
			if (m_origin.size() != m_target.size())
				m_target.resize(m_origin.size());
			return {};
		}
	};

	message list_message { this, "list", "Set new target.",
		MIN_FUNCTION {
			m_origin = m_current;
			m_target = from_atoms<std::vector<double>>(args);
			if (m_origin.size() != m_target.size())
				m_origin.resize(m_target.size());
			return {};
		}
	};

private:
	std::vector<double>	m_origin;
	std::vector<double> m_target;
	std::vector<double> m_current;
	double				m_position { 0.0 };
};

MIN_EXTERNAL(ease);
