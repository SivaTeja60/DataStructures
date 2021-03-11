#define CATCH_CONFIG_MAIN
#include "catch.hpp"

TEST_CASE("The Truth Is Out There") {
    REQUIRE(true);
}

TEST_CASE("The Thompson Twins Test") {
    REQUIRE("East" == "East");
    REQUIRE("West" == "West");
}

TEST_CASE("The ultimate answer") {
    REQUIRE( 6*7 == 42 );
}


