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

    function testRequireError() public {
        vm.expectRevert("Counter must be greater than zero");
        dayFive.setCounter(0);
    }

    function testRevertError() public {
        vm.expectRevert("Value can't be zero");
        dayFive.checkValue(0);
    }

    function testAssestError() public {
        vm.expectRevert();
        dayFive.checkInvariant(0);
    }
}
