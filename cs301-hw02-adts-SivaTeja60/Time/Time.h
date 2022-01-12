#ifndef Time_h
#define Time_h
/*
 * Calculates the time in hours,minutes and seconds
 */
class Time
{
public:
  //setters
  void setHours(int hours);
  void setMinutes(int minutes);
  void setSeconds(int seconds);
  
  //getters  
  float timeInHours();
  float timeInMinutes();
  int timeInSeconds();
  
private:
 //property variables
 float Hours;
 float Minutes;
 int Seconds;
};

#endif