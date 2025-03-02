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

    // Put test the name of the function so it behave as a test otherwise it can't give you desirable output.

    /* 
    "view" If we are not modifying the blockchain then we can use view other-wise it may give an error "Function state mutability can be restricted to view"  
    
    Benefits -->
    1. function marked as view do not consume gas If we don't use it solidity may assume the function may modify the blockchain
    2. It helps in the clear semantic.
    */

    /* 
    console.log() -->
    import "forge-std/console.sol";

    It used to debug the smart contract it used to print the statement like javascript. 
    It allow to print the value inside the test function

    */

    /* .

    assertEq(actual, expected) -->

    It comes to the built-in assertion function.
    Passes if actual == expected
    Fails if actual != expected

    */

    /* 
    memory --> (Keyword)
    
    Memory is the data location specifier used for the temporary storage during function execution.

    It primarly used for variables that are needed only during the execution of a function and not to be stored permanently on the blockchain.

    When passing struct or array to a function, using memory ensure modifiactios don't the original data stored in the storage.

    Since string is a dynamic array of bytes, you must explictly specify memory when declaration a string inside a function.
    */

    function testPostiveNumber() public view {
        uint256 number = dataTypes.postiveNumber();
        console.log("Positive Number:", number);
        assertEq(number, 42);
    }

    function testNegativeNumber() public view {
        int256 negativeNumber = dataTypes.negativeNumber();
        console.log("Negative Number:", negativeNumber);
        assertEq(negativeNumber, -12);
    }

    function testText() public view {
        string memory testString = dataTypes.text();
        console.log("Text:", testString);
        assertEq(testString, "Day One solidity");
    }

    function testBoolean() public view {
        bool testBool = dataTypes.isTrue();
        console.log("Boolean Value:", testBool);
        assertEq(testBool, true);
    }

    function testOwnerAddress() public view {
        address expectedOwner = address(this);
        address actualOwner = dataTypes.owner();

        console.log("Expected Owner:", expectedOwner);
        console.log("Actual Owner:", actualOwner);

        assertEq(actualOwner, expectedOwner, "Owner address mismatch!");
    }
}
