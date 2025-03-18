// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/console.sol";
import "forge-std/Test.sol";
import "../src/Day-seven-Interface.sol";

contract Day_seven is Test {
    Calculator calculator;

    function setUp() public {
        calculator = new Calculator();
    }

    // function testAdd() public view {
    //     uint256 result = calculator.add(1, 2);
    //     console.log("Substract Result:", result);
    // }

    // function testSubstract() public view {
    //     uint result = calculator.substract(2, 1);
    //     console.log("Subtract Result:", result);
    // }
}
