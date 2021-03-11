#include "Time.h"

//constant declaration
const float minutes_per_hour = 60.0;
const float seconds_per_hour=3600.0;
const float seconds_per_minute=60.0;
//setters
void Time::setHours(int hours) {
Hours=hours;
}
void Time::setMinutes(int minutes) {
    Minutes=minutes;
}
void Time::setSeconds(int seconds) {
    Seconds=seconds;
}
//getters
//Calculates and returns time in hours
float Time::timeInHours() {
    float time_in_hours=0.0;
    time_in_hours=(Hours)+(Minutes/minutes_per_hour)+(Seconds/seconds_per_hour);
    return time_in_hours;
}
//Calculates and returns time in Minutes
float Time::timeInMinutes() {
    float time_in_minutes=0.0;
    time_in_minutes=(Hours*minutes_per_hour)+Minutes+(Seconds/seconds_per_minute);
    return time_in_minutes;
}
//Calculates and returns time in Seconds
int Time::timeInSeconds() {
    int time_in_seconds=0.0;
    time_in_seconds=(Hours*seconds_per_hour)+(Minutes*seconds_per_minute)+Seconds;
    return time_in_seconds;
}