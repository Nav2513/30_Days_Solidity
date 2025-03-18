// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Day-eleven-Smart-contract-deploy-and-execution.sol";

contract ContractDeploymentAndExecutionTest is Test {
    Smart_Contract_Deployment_And_Execution contractInstance;

    function setUp() public {
        contractInstance = new Smart_Contract_Deployment_And_Execution();
    }

    function testSet() public {
        contractInstance.set(42);
        console.log(contractInstance.get());
        assertEq(contractInstance.get(), 42);
    }
}
