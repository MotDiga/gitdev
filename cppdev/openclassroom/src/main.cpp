#include <iostream>
#include <fstream>
#include <sstream>
#include <cmath>


std::string binomialRoot(double &a, double &b, double &c);

int main(int argc, const char *argv[])
{
    std::cout << "Salam Alicom" << std::endl << std::endl;

    double a(0), b(0), c(0);

    std::cout << "a: ";
    std::cin >> a;
    std::cout << "b: ";
    std::cin >> b;
    std::cout << "c: ";
    std::cin >> c;
    
    std::string roots = binomialRoot(a, b, c), line;

    std::ofstream ostream("rcs/files/roots");
    if (!ostream)
    {
        std::cout << "unable to open ostream" << std::endl;
        return 0;
    }
    ostream << roots;

    std::ifstream istream("rcs/files/roots");
    if (!istream)
    {
        std::cout << "unable to open istream" << std::endl;
        return 0;
    }

    while (getline(istream, line))
    {
        std::cout << line << std::endl;
    }

    return 0;
}


std::string binomialRoot(double &a, double &b, double &c)
{
    std::stringstream roots;
    double delta(b*b - 4*a*c);

    if (not delta)
    {
        roots << "one root: x = " << -b / (2*a) << std::endl;
    }
    else if (delta > 0)
    {
        roots << "two roots: x1 = " << (-b + sqrt(delta)) / (2*a) << ", x2 = " << (-b - sqrt(delta)) / (2*a) << std::endl;
    }
    else
    {
        roots << "no roots" << std::endl;
    }

    return roots.str();
}