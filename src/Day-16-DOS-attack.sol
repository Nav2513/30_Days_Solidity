// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/* 

        --- Denial of Services (DOS) ---

Denial of Service (DoS) attacks in Solidity occur when a smart contract becomes inaccessible, unusable, or too costly to execute due to vulnerabilities in its design. DoS attacks can be intentional (malicious) or unintentional (due to poor contract design). Below are the main types of DoS vulnerabilities in Solidity:

1. Gas Limit-Based DoS
A contract that requires excessive gas (e.g., loops over large data structures) may become impossible to execute due to Ethereum’s block gas limit. This can cause contract functions to fail.

Mitigation:

Avoid unbounded loops and large storage modifications.

Use mappings instead of arrays when possible.

Implement batch processing to split operations into multiple transactions.

2. Block Gas Limit DoS
If a contract allows an attacker to bloat the contract state (e.g., adding many elements to an array), operations that iterate over the data may exceed the block gas limit, preventing execution.

Mitigation:

Use pull-based mechanisms for payments and state changes.

Allow users to process their own operations individually instead of handling all users at once.

3. Reentrancy-Based DoS
A malicious contract can repeatedly call a function before the first execution completes, preventing others from using the contract (e.g., blocking withdrawals).

Mitigation:

Follow the checks-effects-interactions pattern.

Use OpenZeppelin’s ReentrancyGuard to prevent multiple calls.

4. Front-Running-Based DoS
Attackers can monitor the blockchain mempool and front-run transactions by submitting their own with a higher gas fee, delaying or blocking the original transaction.

Mitigation:

Use commit-reveal schemes to make transactions unpredictable.

Introduce time delays to prevent transaction manipulation.

5. Griefing Attack (Forcing DoS via Gas Costs)
An attacker can exploit a contract by forcing high gas consumption, causing victims to pay excessive fees or fail transactions.

Mitigation:

Use pull-over-push payment mechanisms.

Limit gas consumption in external calls.

*/
