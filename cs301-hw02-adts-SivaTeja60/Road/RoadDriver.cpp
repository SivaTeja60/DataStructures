#include <iostream>
#include <iomanip>
#include <cassert>
using namespace std;
/*
 * Tests the results
 */
#include "Road.h"

int main() {

 Road road;
 // testing width getter and setter
  road.setWidth(24);
  int width = road.getWidth();
  assert(width == 24);
  cout << "Expect width=24, actual=" << width << endl;

// testing length getter and setter
  road.setLength(100);
  int length = road.getLength();
  assert(length == 100);
  cout << "Expect length=100, actual=" << length << endl;
//
// testing asphalt getter
  float asphalt = road.asphalt(6);
  assert(asphalt == 6336000.0f);
  cout << "Expect asphalt=6336000.00, actual=" << setprecision(2) << asphalt << endl;
//
//
// object copy testing, with assignment UPON declaration
//  {
//    Road copy = road;
//    width = copy.getWidth();
//    assert(width == 24);
//    cout << "Copy 1, expect width=24, actual=" << width << endl;
//
//    length = copy.getLength();
//    assert(length == 100);
//    cout << "Copy 1, expect length=100, actual=" << length << endl;
//  }
//
//  // object copy testing, with assignment AFTER declaration
//  {
//    Road copy;
//    copy = road;
//    width = copy.getWidth();
//    assert(width == 24);
//    cout << "Copy 2, expect width=24, actual=" << width << endl;
//
//    length = copy.getLength();
//    assert(length == 100);
//    cout << "Copy 2, expect length=100, actual=" << length << endl;
//  }


}