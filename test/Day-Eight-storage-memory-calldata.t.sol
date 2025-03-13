// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/Day-Eight-storage-memory-calldata.sol"; // Ensure the correct path

contract DayEightTest is Test {
    Day_Eight_storage_memory_calldata contractInstance;

    function setUp() public {
        contractInstance = new Day_Eight_storage_memory_calldata();
    }

    function testStorage() public {
        contractInstance.setValue(42);
        assertEq(contractInstance.storedValue(), 42);
    }

    function testSetRecentYear() public view {
        uint[5] memory result = contractInstance.setRecentYear();

        for (uint i = 0; i < 5; i++) {
            console.log("Result Year:", result[i]);
        }
    }

    function testSetRecentYearCalldata() public view {
        uint[5] memory input = [uint(2021), 2022, 2023, 2024, 2025];
        uint[5] memory result = contractInstance.setRecentYearCalldata(input);
        for (uint i = 0; i < 5; i++) {
            console.log("Result data:", result[i]);
        }
    }
}
