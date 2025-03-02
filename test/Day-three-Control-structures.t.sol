// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-three-Control-structures.sol";

contract DayThreeTest is Test {
    Day_three_Control_structures dayThree;

    function setUp() public {
        dayThree = new Day_three_Control_structures();
    }
}
