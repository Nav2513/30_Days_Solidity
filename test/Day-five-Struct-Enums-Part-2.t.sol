// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-five-Struct-Enums-Part-2.sol";

contract DayFive_Part_2 is Test {
    Day_Five_Struct_Enums_Part_2 part_Two;

    function setUp() public {
        part_Two = new Day_Five_Struct_Enums_Part_2();
    }

    function testSetAndGetStudent() public {
        part_Two.setStudent(
            "Nav",
            22,
            address(0x182C5307665059DEdE3cB5B8585D0FD59716845B)
        );

        (string memory name, uint256 age, address wallet) = part_Two
            .getStudent();

        assertEq(name, "Nav");
        assertEq(age, 22);
        assertEq(wallet, address(0x182C5307665059DEdE3cB5B8585D0FD59716845B));
    }

    function testEnums() public {
        part_Two.setOrderStatus(
            Day_Five_Struct_Enums_Part_2.OrderStatus.Shipped
        );

        Day_Five_Struct_Enums_Part_2.OrderStatus status = part_Two
            .getOrderStatus();

        assertEq(uint(status), 1);
    }
}
