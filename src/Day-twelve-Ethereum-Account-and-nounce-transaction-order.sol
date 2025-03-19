// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/* 
    
        --- Ethereum Accounts: EOA vs. Contract Accounts ---

1. Externally owned accounts(EOA): Controlled by private keys(users).

2. Contract Accounts(Smart Contracts): Controlled by smart contract code.


        --- Externally Owned Accountn (EOA) ---

~ No smart contract code, just an account.
~ Can send and receive ETH & tokens.
~ Can sign transactions using private keys.
~ Cannot execute logic on its own (need user interaction).



        --- Contract Account ---

~ Has no private key (only executes based on rules in its code).
~ Can hold ETH and tokens.
~ Can call functions inside smart contracts.
~ Cannot initiate transactions; only respond to them.



                --- Nounce & Transaction Order ---


What is Nonce?

A Nounce in Ethereum is a unique assigned to each transaction sent from an account. It prevent double spending and ensures transaction are processed in order.

Each account has a transaction nounce, which start from 0 and increament by 1 for every transaction.

~ Prevent reply attack(same transaction being re-used).
~ Ensure ordering of transactions in the Ethereum network.



                --- How Nonce Affects transaction Ordering ---

Ethereum transaction are processed in order based on the nonce.
~ Rule: A transaction with nonce n+1 cannot be processed before nonce n.

If a transaction is missing(skipped nonce), all later transaction are stuck until it is mined.


Fixing stuck Transaction --> 

1. Resend the same transaction with a higher gas price(Nonce remains the same).

2. Send a different transaction with the same nonce to cancel it.
*/
