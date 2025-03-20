// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-15-Access-control.sol";

contract accessControltest is Test {
    ownableExample contractInstance;

    address newOwner = address(0x182C5307665059DEdE3cB5B8585D0FD59716845B);
    address attacker = address(0x7DcEB90241453FF6ad71d1B28452CAd46b17bB13);

    function setUp() public {
        contractInstance = new ownableExample("Initail secret");
    }

    function testSecret() public {
        contractInstance.setSecret("Onwer set new secret");
        string memory secret = contractInstance.getSecret();
        console.log("Result secret:", secret);
    }

    function testNonOwnerCannotSetSecret() public {
        vm.prank(attacker); // Act as attacker
        vm.expectRevert("Ownable: caller is not the owner");
        contractInstance.setSecret("Hacked Secret !!!");
    }

    function testOnlyOwnerCanViewSecret() public view {
        string memory secret = contractInstance.getSecret();
        assertEq(secret, "Initail secret", "Incorrect secret value");
    }

    function testTransferOwnership() public {
        contractInstance.transferOwnership(newOwner);
        assertEq(contractInstance.owner(), newOwner, "Ownership transfer failed!");
    }

    function testOldOwnerCannotSetSecretAfterTransfer() public {
        contractInstance.transferOwnership(newOwner);

        vm.expectRevert("Ownable: caller is not owner !!!");
        contractInstance.setSecret("Old Owner trying to update");
    }
}
