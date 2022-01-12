#define CATCH_CONFIG_MAIN

static const int TEST_WIDTH = 15;
static const int TEST_LENGTH = 200;

#include "catch.hpp"
#include "../Road/Road.h"

TEST_CASE("Should be able to set and get the width") {
    Road road;
    road.setWidth(TEST_WIDTH);
    int width = road.getWidth();
    REQUIRE(width == TEST_WIDTH);
}

TEST_CASE("Should be able to set and get the length") {
    Road road;
    road.setLength(TEST_LENGTH);
    int length = road.getLength();
    REQUIRE(length == TEST_LENGTH);
}

TEST_CASE("Should be able to get the Asphalt") {
    Road road;
    road.setWidth(TEST_WIDTH);
    road.setLength(TEST_LENGTH);
    float asphalt = road.asphalt(6);
    REQUIRE(asphalt == 7920000);
}

TEST_CASE("Copy Constructor should copy the width and Length"){
    Road road;
    road.setWidth(TEST_WIDTH);
    road.setLength(TEST_LENGTH);

    Road copy = road;
    int width = copy.getWidth();
    REQUIRE(width == TEST_WIDTH);

    int length = copy.getLength();
    REQUIRE(length == TEST_LENGTH);
}

TEST_CASE("Copy Assignment Operator should copy the width and length") {
    Road road;
    road.setWidth(TEST_WIDTH);
    road.setLength(TEST_LENGTH);

    Road copy;
    copy = road;

    int width = copy.getWidth();
    assert(width == TEST_WIDTH);

    int length = copy.getLength();
    assert(length == TEST_LENGTH);

}