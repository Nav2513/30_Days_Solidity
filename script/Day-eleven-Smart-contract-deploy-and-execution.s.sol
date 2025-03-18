// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Script.sol";
import "../src/Day-eleven-Smart-contract-deploy-and-execution.sol";

contract DeploySmartContractDeploymentAndExecution is Script {
    function run() external {
        vm.startBroadcast();
        new Smart_Contract_Deployment_And_Execution();
        vm.stopBroadcast();
    }
}
