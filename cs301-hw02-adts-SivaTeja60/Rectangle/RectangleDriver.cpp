#include <iostream>
using namespace std;
#include <cassert>
#include "Rectangle.h"
/*
 * Testing the results
 */
int main() {

  // Testing with ints
  {
    Rect<int> rectangle;

    rectangle.setWidth(4);
    rectangle.setLength(3);
    assert(!rectangle.lengthGreater());
    assert(rectangle.area() == 12);
    assert(rectangle.perimeter() == 14);
  }

  // Testing with double

    {
    Rect<double> rectangle;

    rectangle.setWidth(10);
    rectangle.setLength(25);
    assert(rectangle.area() == 250.00);
    assert(rectangle.perimeter() == 70.00);
    }

  //Testing with float
    {
        Rect<float> rectangle;

        rectangle.setWidth(7.3);
        rectangle.setLength(12.9);
        assert(rectangle.area() == 94.17f);
        assert(rectangle.perimeter() == 40.4f);
    }
  cout << "All checks passed" << endl;

}