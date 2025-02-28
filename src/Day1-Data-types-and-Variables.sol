// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract DayOne {
    uint256 public postiveNumber = 42;
    int public negativeNumber = -12;
    string public text = "Day One solidity";
    bool public isTrue = true;
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}
