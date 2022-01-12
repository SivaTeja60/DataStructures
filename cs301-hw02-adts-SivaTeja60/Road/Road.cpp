#include "Road.h"

//constant declaration
const int foot_per_mile=5280;
const float inches_Per_foot=12.0;

//setters
void Road::setWidth(int feet) {
    width=feet;
}
void Road::setLength(int miles) {
    length=miles;
}
//getters
int Road::getWidth(){
    return width;
}
int Road::getLength() {
    return length;
}

//Calculates and returns Volume

float Road::asphalt(int thickness){     //Takes thickness as parmeter
float volume=0.0;
volume=(length*foot_per_mile)*(width)*(thickness/inches_Per_foot);
return volume;
}
