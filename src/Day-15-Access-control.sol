// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ownableExample is Ownable {
    string private secret;

    constructor(string memory _secret) Ownable(msg.sender) {
        secret = _secret;
    }

    function setSecret(string memory _newSecret) public onlyOwner {
        secret = _newSecret;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return secret;
    }
}

/*

        --- Access Control in solidity: Ownerable vs. Role-Based Access Control(RBAC)

Access control ensure that only authorized can execute certian function in a smart contract There are mainly two appraoches in Solidity.

1. Ownerable(Single Admin Model)

2. Role-Based Access Control(RBAC) multiple role and permission.

Ownerable ---> 
The Ownerable contract(from OpenZeppelin) allows one specific address(the owner) to perform admin tasks. it provides function like:

onlyOwner: Restricts function to the owner.
transferOwner: Transfer ownership to another address.
renounceOwnership: Remove ownership (makes contract ownerless).




*/
