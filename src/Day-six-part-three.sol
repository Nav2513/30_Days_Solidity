// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

abstract contract AbstractDay_six_part_three {
    function abstractFunction() public view virtual returns (string memory);
}

contract ConcreateContract is AbstractDay_six_part_three {
    function abstractFunction() public pure override returns (string memory) {
        return "Implement abstract function !!!";
    }
}
