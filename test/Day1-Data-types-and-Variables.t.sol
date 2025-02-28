// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/Day1-Data-types-and-Variables.sol";

contract Day1_Data_types_and_Variables is Test {
    DayOne dataTypes;

    function setUp() public {
        dataTypes = new DayOne();
    }

    /*    "view" If we are not modifying the blockchain then we can use view other-wise it may give an error "Function state mutability can be restricted to view"  
    
    Benefits -->
    1. function marked as view do not consume gas If we don't use it solidity may assume the function may modify the blockchain
    2. It helps in the clear semantic.
*/
    function testPostiveNumber() public view {
        assertEq(dataTypes.postiveNumber(), 42);
    }
}
