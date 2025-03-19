// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/* 
        --- What is a Reetrancy Attack ---

A reentracy attack is a type of smart contract vulnerability where an exploiter contractor to continously withdraw from it until the victim contract goes bankrupt. The main reason an attacker contract can reenter is if the victim contract does not ascertain the new balance of the exploiter on time.

Foremost, it is essential to underscore that a significant way smart contracts interact is by calling one another. Therefore, smart contract X can call smart contract Y to deposit some tokens. The general procedure is that contract X will try to check if the calling contract has some sufficient tokens, then it will deposit accordingly.

In the case of reentrancy, the attacker contract will deposit into a victim contract and then make a call to withdraw. Ironically, the attacker smart contract developer would have intentionally not given the contract the ability to receive tokens. Thus, when the victim contract innocently sends some tokens, the exploiter contract would not be able to receive them, and this mismatch will trigger the fallback function, which receives Ether when there is an anomaly such as this. But the attacker contract will have more than the default fallback function as it will hold additional manipulative code that will call the victim contract to keep sending Ether. While one part of the victim contract still expects the calling contract to have a withdrawal function, the attacker contract will trick another part of the victim contract into continuously sending Ether (or another token



        --- Explaining How Reentrancy Attack Works with Illustrations ---

Assume there is a bank in a small city called the Bank of the People. Everyone keeps his or her money there, and the bank has a total amount of $100k liquidity.

Now, the bank has an accounting flaw such that when people withdraw money, the staffers of the bank do not update the records immediately but wait until the end of the day when they are doing a general review and updating balances of everyone. Since no customer has ever tried to withdraw more than the amount they had in the account, this flaw went undetected.

Let's imagine a scenario where someone, John, who is not yet a customer of the bank, notices that his friends who use this bank only get the alert of their withdrawal and balance around 6 PM any day they withdraw. John decides to also create an account in the Bank of the People and deposits $1k.

The following week, John opens the bank’s application on his phone and withdraws the $1k. 5 minutes later, he makes another attempt. Since the bank has not updated John's balance, his records still show that John has a $1k deposit in his account even though he has withdrawn it.

This continues until John has withdrawn all the $100k the bank has, and the staffers do not discover it until they are accounting for the day and realize that John had tricked their system. Although reentrancy can be more complex, that is a simple illustration of how attackers can go about it.

        ⏳  Prevention Measures to avoid reentrancy attack.


*/
