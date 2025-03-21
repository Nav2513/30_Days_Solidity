// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-15-Role-Based-Access-Control-part-2.sol";

contract RoleBasedAccessControlTest is Test {
    RBAC contractInstance;

    address deployer = address(this);
    address admin = address(0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496);
    address user = address(0x7DcEB90241453FF6ad71d1B28452CAd46b17bB13);
    address attacker = address(0x1aE8dC4014F340253a5568782aa4511eb0937CcF);

    function setUp() public {
        contractInstance = new RBAC();

        contractInstance.grantRole(contractInstance.ADMIN_ROLE(), admin);
        contractInstance.grantRole(contractInstance.USER_ROLE(), user);
    }

    function testAdminCanSetSecret() public {
        vm.prank(admin);
        contractInstance.setSecret("Admin set secret");

        vm.prank(user);

        string memory secret = contractInstance.getSecret();
        console.log("Contract Secret:", secret);
    }

    function testAttackerCannotSetSecret() public {
        vm.prank(attacker);

        vm.expectRevert(
            "AccessControl: account does not have the required role"
        );

        contractInstance.setSecret("Attacker Secret");
    }
}
