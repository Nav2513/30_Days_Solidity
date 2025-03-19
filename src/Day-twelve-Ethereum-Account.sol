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


*/
