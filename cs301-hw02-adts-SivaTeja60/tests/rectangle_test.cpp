#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../Rectangle/Rectangle.h"

TEST_CASE("Should get area with integer") {
    Rect<int> rectangle;

    rectangle.setWidth(4);
    rectangle.setLength(3);

    REQUIRE(rectangle.area() == 12);
}

TEST_CASE("Should get perimeter with integer") {
    Rect<int> rectangle;

    rectangle.setWidth(4);
    rectangle.setLength(3);

    REQUIRE(rectangle.perimeter() == 14);
}


TEST_CASE("Should get lengthGreater with integer") {
    Rect<int> rectangle;

    rectangle.setWidth(4);
    rectangle.setLength(3);

    REQUIRE(!rectangle.lengthGreater());
}


TEST_CASE("Should get area with double") {
    Rect<double> rectangle;

    rectangle.setWidth(7.3);
    rectangle.setLength(12.9);
    REQUIRE(rectangle.area() == 94.17);
}

TEST_CASE("Should get perimeter with double") {
    Rect<double> rectangle;

    rectangle.setWidth(7.3);
    rectangle.setLength(12.9);
    REQUIRE(rectangle.perimeter() == 40.4);
}

TEST_CASE("Should get lengthGreater with double") {
    Rect<double> rectangle;

    rectangle.setWidth(7.3);
    rectangle.setLength(12.9);
    REQUIRE(rectangle.lengthGreater());
}