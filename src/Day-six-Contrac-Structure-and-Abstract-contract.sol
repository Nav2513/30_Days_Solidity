// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Parent {
    string public parentString = "Hi from the state variable !!!";

    function parentFunction() public pure returns (string memory) {
        return "Hi from the parent function !!!";
    }

    function greet() public pure virtual returns (string memory) {
        return "Hello from the parent overide function !!!";
    }
}

contract Child is Parent {
    function getParentString() public view returns (string memory) {
        return parentString; // Inherited the state variable
    }

    function getParentFunction() public pure returns (string memory) {
        return parentFunction(); // Inherited function
    }

    function greet() public pure override returns (string memory) {
        return "Hello form child overided version !!!";
    }
}

/* 

Contract Inheritance in Solidity

 Overriding Functions in Inheritance


  Multiple Inheritance


Abstract Contracts in Solidity



Contract inheretance is Solidity allows one smart contract to reuse the functionality od another smart contract. This enables developers to write modular and reusable code, reducing redancy and improving maintainbility.

~ A child contract inherits all the functionality, state variables, and modifiers from a parent contract.
~ The child contract can overrids functions from the parent conract.
~ Solidity support single and multiple inheretance.

         --- Single Inheretance ---

Single inheretance is a fundamental concept is solidity where a child contract inherits from a single parent contract. This allows the contract to reuse the parent contract's state variables, functions and modifiers.

~ The child contract inherits all public and internal variables and functions.
~ The child contract can override parent functions (if marked virtual).
~ Reduces code duplication and improves modularity.
~ Uses the is keyword to define inheretance.



        --- Function Override ---

Function overriding in Solidity allows a child contract to redefine a function that is aleardy in a parent contract.

~ The child function must be marked as virtual to allow overriding.
~ The child function must use the override keyword.
~ The overridden function in the child contract replaces the original function from the parent contract.


Usecases -->

1. Upgradability in Smart Contracts.
Function Overriding allows modifying exiting functionality without changing the contract address. This is use in proxy patterns.

2. Access Control Mechanisms.







*/
