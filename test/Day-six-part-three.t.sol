// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-six-part-three.sol";

contract Day_six_part_3 is Test {
    Cat cat;

    function setUp() public {
        cat = new Cat();
    }

    function test() public view {
        string memory result = cat.abstractFunction();
        console.log("Result:", result);
    }
}
