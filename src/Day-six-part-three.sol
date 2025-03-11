// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

abstract contract Voice {
    function abstractFunction() public pure virtual returns (string memory);
}

contract Cat is Voice {
    function abstractFunction()
        public
        pure
        virtual
        override
        returns (string memory)
    {
        return "Meow";
    }
}

/* 
        ---Abstract Contract ---


Contracts must be marked as abstract when at least one of the their functions is not implemented or when they do not provide argument for all of their base contract constructors. Even if this is not case, a contract  may still be marked abstract. Such as when you do not intend for the contract to be created directly. It is similar to interfaces in solidity but intefaces are more limited.

~ Abstract contract is declare using abstract keyword.
~ If a contract inherits from an contract and does not implememt all non-implementd function by overrriding, it needs to be marked as abstract as well.





*/
