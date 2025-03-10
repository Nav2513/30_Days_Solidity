// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-six-part-two.sol";

contract Day_six_part_two is Test {
    Child child;

    function setUp() public {
        child = new Child();
    }

    function testMultiInhertance() public view {
        string memory result = child.getMessage();
        console.log(result);
    }

    function testChildMessage() public view {
        string memory result = child.getMessage();
        console.log("No change:", result);
    }
}
