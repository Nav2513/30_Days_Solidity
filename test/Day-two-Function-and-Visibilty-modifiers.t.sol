// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-two-Function-and-Visibilty-modifiers.sol";

contract DayTwoTest is Test {
    Day_two_Function_and_Visibilty_modifiers dayTwo;

    // Declaring the ChildContract.
    ChildContract child;

    function setUp() public {
        dayTwo = new Day_two_Function_and_Visibilty_modifiers();
        // Intialize the child contract.
        child = new ChildContract();
    }

    function testPublicFunction() public view {
        string memory result = dayTwo.publicFunction();
        console.log("Result String:", result);
        assertEq(result, "Public Function");
    }

    function testPrivateFunction() public view {
        string memory result = dayTwo.callPrivateFunction();
        console.log("Result String:", result);
        assertEq(result, "Private Function!");
    }

    function testInternalFunction() public view {
        string memory result = child.callInternalFunction();
        console.log("Result string form the internal function:", result);
        assertEq(result, "Internal Function !");
    }

    function testExternalFunction() public view {
        string memory result = dayTwo.externalFunction();
        console.log("Result string from the external function:", result);
        assertEq(result, "External function!");
    }
}
