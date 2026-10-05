#include <iostream>
#include "calculator.h"

int main()
{
	Calculator calc;
	std::cout << "2.3 + 3.4 = " << calc.Add(2.3, 3.4) << std::endl;
	std::cout << "7.8 - 2.1 = " << calc.Sub(7.8, 2.1) << std::endl;
	return 0;
}
