// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-nine-Function-overloading.sol";

contract Day_nine is Test {
    Day_nine_Function_overloading contractInstance;

    function setUp() public {
        contractInstance = new Day_nine_Function_overloading();
    }

    function testFunctionOverloading() public view {
        uint256 result = contractInstance.setNumber(10);
        console.log("Result:", result);
    }

    function testFunctionOverloadinSecond() public view {
        uint256 result = contractInstance.setNumber(10, 10);
        console.log("Result:", result);
    }

    function testFunctionOverloadingThird() public view {
        string memory result = contractInstance.setNumber("Function Overloading");
        console.log("Result:", result);
    }
}
