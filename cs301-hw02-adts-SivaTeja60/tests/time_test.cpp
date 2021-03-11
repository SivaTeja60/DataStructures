#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../Time/Time.h"

TEST_CASE("Should be able to set the hour, minute and second") {
    Time time;

    time.setHours(4);
    time.setMinutes(03);
    time.setSeconds(36);
}

TEST_CASE("Should be get the time in seconds") {
    Time time;

    time.setHours(4);
    time.setMinutes(03);
    time.setSeconds(36);
    int inSeconds = time.timeInSeconds();
    REQUIRE(inSeconds == 14616);
}

TEST_CASE("Should be get the time in minutes") {
    Time time;

    time.setHours(4);
    time.setMinutes(03);
    time.setSeconds(36);
    float inMinutes = time.timeInMinutes();
    REQUIRE(inMinutes > 243.5f);
    REQUIRE(inMinutes < 243.7);
}

TEST_CASE("Should be get the time in Hours") {
    Time time;

    time.setHours(4);
    time.setMinutes(03);
    time.setSeconds(36);
    float inHours = time.timeInHours();
    REQUIRE(inHours > 4.059f);
    REQUIRE(inHours < 4.07f);
}