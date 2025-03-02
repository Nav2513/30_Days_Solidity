// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_three_Control_structures {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // if-else program.

    function checkValue(uint256 _x) public pure returns (string memory) {
        if (_x > 10) {
            return "Grater than ten!";
        } else if (_x == 10) {
            return "Equal to ten!";
        } else {
            return "Smaller than ten!";
        }
    }

    // For loop: Sum of the first n natural number.

    function sum(uint256 _n) public pure returns (uint256) {
        uint256 sumResult = 0;
        for (uint256 i = 0; i <= _n; i++) {
            sumResult += i;
        }
        return sumResult;
    }

    // While loop: Factorial of a number.

    function factorial(uint256 _n) public pure returns (uint256) {
        uint256 factorialResult = 1;
        uint256 i = _n;
        while (i > 0) {
            factorialResult *= i;
            i--;
        }
        return factorialResult;
    }

    // Do-While Loop: Countdown to zero!

    function countDown(uint256 _n) public pure returns (uint256) {
        uint256 i = _n;
        do {
            i--;
        } while (i > 0);
        return i;
    }

    // Function Modifier: Restrict function execution to onlyOwner

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
}
