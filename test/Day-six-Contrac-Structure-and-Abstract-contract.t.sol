// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-six-Contrac-Structure-and-Abstract-contract.sol";

contract Day_six is Test {
    Child child;

    function setUp() public {
        child = new Child();
    }

    function testInheritedFunction() public view {
        string memory result = child.getParentFunction();
        assertEq(result, "Hi from the parent function !!!");
        console.log(result);
    }

    function testInheritedMessage() public view {
        string memory result = child.getParentString();
        console.log(result);
        assertEq(result, "Hi from the state variable !!!");
    }

    function testOverideFunction() public view {
        string memory result = child.greet();
        assertEq(result, "Hello form child overided version !!!");
        console.log(result);
    }
}
