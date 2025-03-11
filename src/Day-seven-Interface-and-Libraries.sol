// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface Icalculator {
    function add(uint256 a, uint256 b) external pure returns (uint256);

    function substract(uint256 a, uint256 b) external pure returns (uint256);
}

// Implement the interface in a contract

contract Calculator is Icalculator {
    function add(
        uint256 a,
        uint256 b
    ) external pure override returns (uint256) {
        return a + b;
    }

    function substract(
        uint256 a,
        uint256 b
    ) external pure override returns (uint256) {
        return a - b;
    }
}

/* 
        --- Interfaces ---
        
Interfaces are similar to abstract contract, but they cann't have any function implemented. There are further restrictiions:

~ They cann't inherit from other contracts, but they can inherit from other interfaces.
~ All declared functions must be external in the interfaces, even if they are public in the contract.
~ They cann't daeclare a constructor.
~ They cann't declare state variables.
~ They cannot declare modifiers.

Interfaces are basically limited to what the contract ABI can represent, and the conversion between the ABI and interfaces should be possible without any information loss.



Contract can inherit interfaces as they would inherit other contract.

All functions declared in interfaces are implicity virtual and any function that override them do not need the override keyword.
This does not automatically mean that an overriding function can be overriden again - this is only possible if the overriding function is marked virtual.




*/
