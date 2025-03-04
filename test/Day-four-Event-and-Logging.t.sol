// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-four-Event-and-Logging.sol";

contract DayThree is Test {
    Day_four_Event_and_Logging dayFour;

    function setUp() public {
        dayFour = new Day_four_Event_and_Logging();
    }

    function testEmitValueUpdated() public {
        uint256 oldValue = dayFour.value();
        uint256 newValue = 42;

        vm.expectEmit(true, true, false, true);
        emit Day_four_Event_and_Logging.ValueUpdate(
            address(this),
            oldValue,
            newValue
        );

        dayFour.updateValue(newValue);
    }
}
