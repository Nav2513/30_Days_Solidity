// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/console.sol";
import "forge-std/Test.sol";
import "../src/Day-seven-Libraries.sol";

contract MathLibTest is Test {
    function testAdd() public pure {
        uint256 result = MathLib.add(5, 3);
        console.log("Addition Result:", result);
    }

    function testMultiply() public pure {
        uint256 result = MathLib.multiply(5, 3);
        console.log("Multiplication Result:", result);
    }
}
