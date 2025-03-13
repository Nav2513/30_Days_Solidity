// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_nine_Function_overloading {
    function setNumber(uint256 num) public pure returns (uint256) {
        return num + 1;
    }

    function setNumber(uint256 num, uint256 extra) public pure returns (uint256) {
        return num + extra;
    }

    function setNumber(string memory str) public pure returns (string memory) {
        return str;
    }
}

/*

        --- Function overloading ---

This technique involves creating multiple versions of the same function with different numbers of parameters.

    Diffrent Functions with Different Parameter Lists.

Create seprate functions with the same name but varying nuumbers of parameters. The first function will have all the required parameters. while subsequent functions will have the same required parameters followed by the optional  ones with default values.

*/
