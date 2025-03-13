// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_Eight_storage_memory_calldata {
    uint256 public storedValue;

    function setValue(uint256 _newValue) public {
        storedValue = _newValue;
    }

    function setRecentYear() public pure returns (uint256[5] memory) {
        uint256[5] memory year;
        year[0] = 2021;
        year[1] = 2022;
        year[2] = 2023;
        year[3] = 2024;
        year[4] = 2025;
        return year;
    }

    function setRecentYearCalldata(
        uint[5] calldata input
    ) public pure returns (uint[5] memory) {
        return input;
    }
}

/* 

        --- Storage Memory Calldata ---

In Solidity, storage, memory and calldata define hoe and where data is store and accessed. Chossing the right one optise gas usage and improve efficiency.

Storage -->

Location: Permanent storage on the blockchain(state variable).
Persistence: Data is saved between function calls.
Gas Cost: Expensive(Writing to storage costs a lot of gas).

Usage: Used for the state variable inside contracts.

Tip: Use memory or calldata instead of storage if you don't need persistence.

Memory -->

Location: Temporary storage for function execution.
Persistence: Data is deleted after the function runs.
Gas Cost: Cheaper than storage(temporary storage in RAM).

Usages: Used for function arguments and temporary variables.

Tip: Use memory instead of storage for temporary variables.

Calldata -->

Location: Similar to memory but read-only and gas-efficient.
Persistance: Data exists only during the function call.
Gas Cost: Cheapest(no copying, forect reference).

Usage: Used for function parameters in external functions.

Tip: Use calldata instead of memory for function parameters when the data doesn't need modification.


        --- memory vs calldata ---

The choice between memory and calldata for function parameters can significantly impact gas costs. Call data is read-only area where function arguments are stored, whiile memory is a temporary storage area that can be modified. Using call data for read-only array argument saves gas by avoiding unnecessary data copying. Thus for functions that recieve arrays or strings as parameters, using calldata instead of memory can save significant gas.


*/
