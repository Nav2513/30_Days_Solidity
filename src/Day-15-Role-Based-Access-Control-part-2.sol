// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract RBAC is AccessControl {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant USER_ROLE = keccak256("USER_ROLE");

    string private secretData;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(ADMIN_ROLE, msg.sender);
    }

    function setSecret(string memory _secret) public onlyRole(ADMIN_ROLE) {
        secretData = _secret;
    }

    function getSecret() public view onlyRole(USER_ROLE) returns (string memory) {
        return secretData;
    }

    function addUser(address user) public onlyRole(ADMIN_ROLE) {
        _grantRole(USER_ROLE, user);
    }

    function removeUser(address user) public onlyRole(ADMIN_ROLE) {
        _revokeRole(USER_ROLE, user);
    }
}

/*
        --- Role-Based Access Control(RBAC) in solidity ---

Role-Based Access Control(RBAC) is a comman pattern for managing permission in smart contracts. It allows assigning different roles to address, enabling fine-grained access control. OpenZeppelin provides a secure and efficient way to implement RBAC using the AccessControl contract.

*/
