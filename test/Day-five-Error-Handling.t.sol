// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-five-Error-Handling.sol";

contract DayFive is Test {
    Day_five_Error_Handling dayFive;

    function setUp() public {
        dayFive = new Day_five_Error_Handling();
    }
}
