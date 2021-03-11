#ifndef Road_h
#define Road_h
/*
 * Calculates the Voulme
 */
class Road {
public:
  //setters
  void setWidth(int feet);      // accepts feet
  void setLength(int miles);    // accepts miles
  //getters
  int getWidth();               // returns feet
  int getLength();              // returns miles
  float asphalt(int thickness); // accepts inches, returns cubic feet

private:
    //variable declarations
  int width;                    // in feet
  int length;                   // in miles 
};

#endif