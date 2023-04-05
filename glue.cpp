#include <sstream>
#include <iomanip>
#include <blitz.h>

extern "C" {
	BBString * bmx_double_to_string(double val, int precision){
		std::ostringstream str;
		str << std::fixed;
		str << std::setprecision(precision);
		str << val;
		
		return bbStringFromCString(str.str().c_str());
	}
}
