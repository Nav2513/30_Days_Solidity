// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-six-part-three.sol";

contract Day_six_part_3 is Test {
    ConcreateContract concreate;

    function setUp() public {
        concreate = new ConcreateContract();
    }

    function testAbstractFunction() public view {
        assertEq(
            concreate.abstractFunction(),
            "Implement abstract function !!!"
        );
        string memory result = concreate.abstractFunction();
        console.log("Result String:", result);
    }
}
