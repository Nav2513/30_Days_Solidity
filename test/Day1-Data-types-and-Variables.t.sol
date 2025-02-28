// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day1-Data-types-and-Variables.sol";

contract Day1_Data_types_and_Variables is Test {
    DayOne dataTypes;

    function setUp() public {
        dataTypes = new DayOne();
    }

    /* 
    "view" If we are not modifying the blockchain then we can use view other-wise it may give an error "Function state mutability can be restricted to view"  
    
    Benefits -->
    1. function marked as view do not consume gas If we don't use it solidity may assume the function may modify the blockchain
    2. It helps in the clear semantic.
*/

    /* 
    console.log() -->
    It used to debug the smart contract it used to print the statement like javascript. 
    It allow to print the value inside the test function

*/
    function testPostiveNumber() public view {
        uint256 number = dataTypes.postiveNumber();
        console.log("Positive Number:", number);
        assertEq(number, 42);
    }
}
