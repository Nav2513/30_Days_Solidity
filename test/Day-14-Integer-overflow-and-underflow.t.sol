// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
pragma abicoder v2;

import "forge-std/Test.sol";
import "../src/Day-14-Integer-overflow-and-underflow.sol"; // Adjust path as needed;

contract OverflowTest is Test {
    Integer_overflow_and_underflow contractInstance;

    function setUp() public {
        contractInstance = new Integer_overflow_and_underflow(); // Deploy contract
    }

    function testOverflow() public {
        uint256 value = contractInstance.causeOverflow();
        console.log("Overflow Result:", value);
    }

    function testUnderflow() public {
        uint256 value = contractInstance.causeUnderflow();
        console.log("UnderFlow Result:", value);
    }
}
