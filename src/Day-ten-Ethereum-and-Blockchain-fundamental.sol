// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/* 
 
        --- Ethereum & Blockchain Fundamental ---

    Ethereum Virtual Machine

The Ethereum Virtual Machine (EVM) is the decentralised computing engine that powers Ethereum. It acts as a runtime environment for executing smart contracts and decentralized application (dApp) on the Ethereum Blockchain.

The Ethereum Virtual Machine(EVM) is like Java Virtual Machine(JVM). but ut has a diffrenet focus. Both are virtual machines that let program run on the diffrent systems without needing changes.

Key Feature of EVM 

1. Turing complete: It can execute any algorithm, given enough time and resources(gas).

2. Sandboxed Environment: Code runs in isolation from the host system, preventing unauthorized access.

3. Gas Mechanism: Transaction and computations require gas. preventing infinite loops and spam attacks.

4. Determinstic Execution: Given the same input, the EVM always produces the same output across all nodes.

5. Bytecode Execution: Smart contract are compiled into low-level EVM bytecode, which the EVM executes.




        --- Gas & Transaction Costs ---

In Ethereum, gas is a unit that measures the computational wprk required 
to execute transactions, smart contracts, and operations. Since Ethereum is a decentralized network, minos(or validator in Ehtereum 2.0) need incentives to process and validator transaction.

~ Gas represents the computational effort required to execute operations in the Ethereum Virtual Machine (EVM).

~ Every operation (e.g., adding numbers, storing data, executing a contract) has a fixed gas cost.

~ Gas is not a currency but a unit of measure.

~ Total Gas = Gas Used * Gas Price

                --- Why do Gas price fluctuate ? ---

Network Congestion : Higher demand increase the base fee.

Transaction Complexity : Simple transfer cost less than executing smart contract.

Block Size & Priority : User paying higher fess get included faster.

                --- Reducing Gas Costs ---

Use Layer 2 Solution : Polygon, Arbitrum, Optimism offer lower fees.

Optimize Smart Contracts : Efficient code reduces execution code.

Time Transaction : GAs fes are lower during off-peak hours.

Use Gas-efficient Standard : ERC-721A(for NFTs), ERC-20 gas optimization techniques.






*/
