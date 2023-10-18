#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <map>


double dsqrt(double real)
{
    double y = real;
    unsigned long i = *(unsigned long*)&y;
    
    i = 0x1ff7a3bea0000000 + (i >> 1);
    y = *(double*)&i;

    y = 0.5f * (y + real/y);                                //* 2 Digits Of Precision
    y = 0.5f * (y + real/y);                                //* 6 Digits Of Precision
    y = 0.5f * (y + real/y);                                //* 13 Digits Of Precision
    y = 0.5f * (y + real/y);                                //* 15 Digits Of Precision

    return y;
}

int main(int argc, const char *argv[])
{
    std::cout << "Salam Alicom\n\n";
	
	std::ofstream ofs("rcs/files/str.txt");
	if (!ofs)
	{
		std::cout << "unable to open \"rcs/files/str.txt\"\n";
		return -1;
	}
		
	double real;
	std::cout << "enter a number: ";
	std::cin >> real;
	
	ofs << "sqrt(" << real << ") = " << dsqrt(real) << "\n";
	
    return 0;
}