#ifndef Rectangle_h
#define Rectangle_h
/*
 * Checks if length is greater than width
 * Calculates Area and Perimeter of Rectangle
 */
//template
template <typename ParameterType>
class Rect
{
    ParameterType width;
    ParameterType length;

public:
    void setWidth(ParameterType);
    void setLength(ParameterType);

    bool lengthGreater();
    ParameterType perimeter();
    ParameterType area();
};

//getters and setters
//template for width
template <class ParameterType>
void Rect<ParameterType>::setWidth(ParameterType Width) {
    width = Width;
}
//template for length
template <class ParameterType>
void Rect<ParameterType>::setLength(ParameterType Length) {
    length = Length;
}
//template for length check
//returns boolean
template <class ParameterType>
bool Rect<ParameterType>::lengthGreater() {
    return (length > width);
}
//template for perimeter
//returns perimeter
template <class ParameterType>
ParameterType Rect<ParameterType>::perimeter() {
    return (2 * width) + (2 * length); //parameter formula=2*(length+width)
}
//template for Area
//returns area
template <class ParameterType>
ParameterType Rect<ParameterType>::area() {
    return (width * length); //Area formula=length*width
    //
}

#endif