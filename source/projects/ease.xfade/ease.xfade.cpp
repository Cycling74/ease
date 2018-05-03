/// @file
///	@copyright	Copyright 2018 Cycling '74. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "../ease_base.h"

class ease : public ease_base<ease> {
public:
	MIN_DESCRIPTION {"Use an easing function to interpolate between successive lists."};
	MIN_TAGS {"ease, functions"};
	MIN_AUTHOR {"Cycling '74"};
	MIN_RELATED {"ease, ease~, ease.xfade~, jit.ease, list.ease, line, line~, curve~"};

	inlet<>  input {this, "(list) new target or origin"};
	inlet<>  input2 {this, "(float) easing function position."};
	outlet<> output {this, "(list) eased output "};

	ease(const atoms& args = {}) {
		handle_object_arguments(args);
	}

	message<threadsafe::yes> number_message {this, "number", "Normalized transition location.",
		MIN_FUNCTION {
			m_position = args[0];
			bang();
			return {};
		}};

	message<threadsafe::yes> bang {this, "bang", "Output",
		MIN_FUNCTION {
			auto  position1 = apply_easing_function(m_position);
			auto  position2 = 1.0 - position1;
			atoms result;

			{
				lock lock(m_mutex);
				auto size = m_origin.size();

				m_current.resize(size);

				for (auto i = 0; i < size; ++i)
					m_current[i] = position2 * m_origin[i] + position1 * m_target[i];
				result = to_atoms(m_current);
			}

			output.send(result);
			return {};
		}};

	message<threadsafe::yes> set_message {this, "set", "Set origin without output.",
		MIN_FUNCTION {
			lock lock(m_mutex);
			m_origin = from_atoms<std::vector<double>>(args);
			if (m_origin.size() != m_target.size())
				m_target.resize(m_origin.size());
			return {};
		}};

	message<threadsafe::yes> list_message {this, "list", "Set new target.",
		MIN_FUNCTION {
			lock lock(m_mutex);
			m_origin = m_current;
			m_target = from_atoms<std::vector<double>>(args);
			if (m_origin.size() != m_target.size())
				m_origin.resize(m_target.size());
			return {};
		}};

private:
	mutex               m_mutex;
	std::vector<double> m_origin;
	std::vector<double> m_target;
	std::vector<double> m_current;
	double              m_position {0.0};
};

MIN_EXTERNAL(ease);
