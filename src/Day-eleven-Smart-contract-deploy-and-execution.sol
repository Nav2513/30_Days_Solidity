// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Smart_Contract_Deployment_And_Execution {
    uint256 private storeNumber;

    event NumberUpdated(uint256 newValue);

    function set(uint256 _number) public {
        storeNumber = _number;
        emit NumberUpdated(_number);
    }

    function get() public view returns (uint256) {
        return storeNumber;
    }
}
