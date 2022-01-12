# CS301-hw02-ADTs
Assignment to familiarize students with ADTs

## Road ADT Class
The Road object will take width and length and return the cubic feet asphalt to pave a road at a given thickness.
1. Use the RoadDriver.cpp to guid you through creating the road function by commenting out the lines one at a time.
2. The prototype functions in Road.h and write the functions in Road.cpp for:
    1. setWidth
    2. setLength
    3. getWidth
    4. getLength
    5. asphalt
3. Use the Road_test test to check your work

#### Note: There are 5,280 feet in a mile 
## Time ADT Class
The Time object will take seconds, minutes, and hours add them up and return the total number of hours, minutes or seconds.  The internal implementation is up to you.  For example you can have variables for hours, minutes and seconds or one variable that holds the all the seconds.  In other words you can convert the data when it's set or when it's returned. 

1. This time you'll need to write your own TimeDriver as you're developing the Time Class.
2. Looking at the Time.h header file you'll see that you need to write functions in Time.cpp for:
   1. setHours
   2. setMinutes
   3. setSeconds
   4. timeInHours
   5. timeInMinutes
   6. timeInSeconds
3. Use Time_test to check your work. 

## Rectangle ADT Class
The Rectangle object will just take a a width and length and return the area and perimeter.  However this object will be a Template Class to that you it can take it's arguments as integers, doubles, floats or other number types.
1. The starting Rectangle Driver will have an example to test with an int, you'll want to write tests of other number types.
2. For this ADT ***do not create a separate Rectangle.cpp file***, rather write the functions right in the header file. The functions you'll need to write are:
   1. setWidth
   2. setLength
   3. lengthGreater
   4. perimeter
   5. area
3. Use the Rectangle_test to test your work.

## Turn it in
Commit and push all your work to github, check the test again online. Then copy the repository URL and paste it into the comment when you submit your assignment on blackboard. 


    
    
