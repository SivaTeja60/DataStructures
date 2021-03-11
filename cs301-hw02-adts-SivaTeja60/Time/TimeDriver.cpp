#include <iostream>
#include <iomanip>
#include <cassert>
using namespace std;
/*
 * Tests the Time results
 */
#include "Time.h" 

int main() {
Time time;
// Testing the setters
time.setHours(4);
time.setMinutes(30);
time.setSeconds(3600);

// Testing the time in hours getter
float hours =time.timeInHours();
assert(hours==5.5f);
cout<< "Expected Hours=5.5f , actual=" << hours<< endl;

// Testing the time in minutes getter
float minutes=time.timeInMinutes();
assert(minutes==330);
cout<< "Expected Minutes=330 , actual=" << minutes<< endl;

// Testing the time in seconds getter
int seconds=time.timeInSeconds();
assert(seconds==19800);
cout << "Expected Seconds=19800 , actual=" << seconds<< endl;
}