// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-three-Control-structures.sol";

contract DayThreeTest is Test {
    Day_three_Control_structures dayThree;
    address testUser = address(0x182C5307665059DEdE3cB5B8585D0FD59716845B);

    function setUp() public {
        dayThree = new Day_three_Control_structures();
    }

    // 1. Test if-else.

    function testCheckValueGrater() public view {
        string memory result = dayThree.checkValue(10);
        console.log("If else result:", result);
        assertEq(dayThree.checkValue(15), "Grater than ten!");
    }

    function testCheckValueEqual() public view {
        string memory result = dayThree.checkValue(10);
        console.log("If else result:", result);
        assertEq(dayThree.checkValue(10), "Equal to ten!");
    }

    function testCheckValueSmaller() public view {
        string memory result = dayThree.checkValue(9);
        console.log("If else result:", result);
        assertEq(dayThree.checkValue(9), "Smaller than ten!");
    }

    // 2. For loop.

    function testSum() public view {
        uint256 result = dayThree.sum(10);
        console.log("For loop result:", result);
    }

    // 3. While Loop: Factorial.

    function testFactorial() public view {
        uint256 result = dayThree.factorial(1);
        console.log("Factorial reesult:", result);
    }

    // 4. Do-While: Countdown.

    function testCountdown() public view {
        console.log("Do-While Loop Countdown:", dayThree.countDown(5));
        assertEq(dayThree.countDown(5), 0);
    }

    // Test only Owner Modifier.

    /*

    vm -->

    ~ In Foundry, vm refers to the "cheatcodes" provided by foundry'vm interface.
    ~ It allows you to manipulate blockchain state in tests, making it easier to test smart contract effectively.

    Common vm Cheatcodes in Foundry:

    Cheatcode                   Description
    -------------------------------------------------------------------------------
    vm.prank(address)           // Changes msg.sender for the next transaction.
    vm.expectRevert(string)     // Expects the next transaction to revert with a specific error message.
    vm.expectRevert()           // Expects a transaction to revert (without checking the message).
    vm.startPrank(address)      // Sets msg.sender for multiple transactions until vm.stopPrank() is called.
    vm.stopPrank()              // Stops the pranking session (used with vm.startPrank()).
    vm.roll(uint256)            // Moves the block number forward.
    vm.warp(uint256)            // Changes the block timestamp.
    vm.deal(address, uint256)   // Sets the balance of an address.

    */

    function testChangeOwnerAsOwner() public {
        dayThree.changeOwner(testUser);
    }

    function testChangeOwnerAsNonOwner() public {
        vm.prank(testUser); // Simulate a different caller.
        vm.expectRevert("Not the contract owner");
        dayThree.changeOwner(
            address(0x182C5307665059DEdE3cB5B8585D0FD59716845B)
        );
    }
}
