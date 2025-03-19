// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Integer_overflow_and_underflow {
    uint256 public value = 2 ** 256 - 1;
    uint256 public valueTwo = 0; // Minimum uint256 value

    function causeOverflow() public returns (uint256) {
        value += 1;
        return value;
    }

    function causeUnderflow() public returns (uint256) {
        valueTwo -= 1;
        return valueTwo;
    }
}

/* 

        --- Integer Overflow and UnderFlow ---

Integer overflow and underflow are common issues in programming, including Solidity, the language used for developing smart contracts on the Ethereum blockchain. These issues arise when the result of an arithmetic operation exceeds the maximum or minimum value that can be represented by the data type. In Solidity, these issues can have serious consequences, leading to unexpected behavior or vulnerabilities in smart contracts



Interger Overflow --->

Integer overflow occurs when the result of an arithmetic operation exceeds the maximum value that can be represented by the data type. In Solidity, integers are represented using fixed-size data types like uint256 (unsigned integer with 256 bits) or int256 (signed integer with 256 bits). If the result of an addition, multiplication, or any other arithmetic operation exceeds the maximum value that can be stored in the data type, an overflow occurs.

Integer Underflow --->

Conversely, integer underflow occurs when the result of an arithmetic operation goes below the minimum value that can be represented by the data type. This typically happens with subtraction or division operations


        --- Important Update on Interger overflow and underflow ---

~ If you are using solidity <0.8.0, then interger overflow can happen beacause arithmetic operations wrap around instead of reverting.

~ In solidity version 0.8 by changing the opcodes in the languages for arithmetic operations which now have built-in overflow and underflow checks and reverts upon failure.





*/
