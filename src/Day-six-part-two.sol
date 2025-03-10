// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Father {
    function getMessage() public pure virtual returns (string memory) {
        return "Message from Father";
    }
}

contract Mother {
    function getNumber() public pure virtual returns (uint256) {
        return 42;
    }
}

contract Child is Father, Mother {
    function getMessage() public pure override returns (string memory) {
        return "Overidden message !!!";
    }
}
