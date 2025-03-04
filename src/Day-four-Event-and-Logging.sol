// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_four_Event_and_Logging {
    event ValueUpdate(
        address indexed updater,
        uint256 oldValue,
        uint256 newValue
    );

    uint256 public value;

    function updateValue(uint256 _newValue) external {
        uint256 oldValue = value;
        value = _newValue;

        emit ValueUpdate(msg.sender, oldValue, _newValue);
    }
}

/* 
    Events and logging in solidity sevre off-chain application by 
    providing an efficient way to track smart contract activity without storing unnecessary data on-chain.


    1.) Smart contract Monitoring and Debugging

    ~ Developer and Dapp can track contract activity in real-time.
    ~ Logs help in debugging without modifying state variable.

    code -->

    event FundsDeposited(address  indexed user, uint256 amount);

    function deposit() external payable {
        emit FundsDeposited(msg.sender, msg.value);
        }

    
    A dApp frontend can listen to FundsDeposited to show real-time updates.


    2.) Gas-Efficient Data Storage.

    ~ Storing data on-chain costs more gas than emiting events.
    ~ Events store data in the transaction reciept(not directly in contract storage).
    
    ~ Exmaple - Instead of storing past transaction in an array , use an event.

    Code --> 

    event TransactionRecorded(address indexed sender, uint256 amount);

    function recordTransaction(uint256 _amount) external {
        emit TransactionRecorded(msg.sender, _amount);
        }

    ~ Events do not increase contract storage, reducing gas fees.



    3.) Event-Based Triggers for Off-Chain Services.

    ~ Used for dApp UIs, Oracles, and external application to respond to blockchain activity.
    ~ Example --> A price oracle watches an events to trigger an update.

    Code --> 

    event PriceUpdated(uint256 oldPrice, uint256 newPrice);

    function updatePrice(uint256 _newPrice) external {
        uint256 oldPrice = price;
        price = _newPrice;
        emit PriceUpdated(oldPrice, _newPrice);
        }


    4.) Ownership and role Management

    ~ Used to track administrative action in DAOs or mutli-sig wallets
    ~ Example --> Tracking admin changes.

    Code -->

    event OwnershipTraferred(address indexed oldOwner, address indexed newOwner);

    address public owner;

    function transferOwnership(address, _newOwner) external{
        require(msg.sender == owner, "Not owner");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
        }

    ~ Allow dApps to track ownership changes without storing history.


    5.) Decentralised Finance (DeFi) and Trading Platforms.

    ~ Events tracks swaps, trades, and lending transactions.
    ~ Example --> Uniswap emit an event when a swap happens.

    Code --> 
    event SwapExecuted(
        adress indexed trader,
        uint256 amountIn,
        uint256 amountOut
    );

    ~ Trading bots and analytics tools monitor swaps in real-time.

    6.) Cross-Contract Communication

    ~ Events allow other smart contract to react to actions.
    ~ Example --> A staking contract listens for an events from a rewards contract.

    Code --> 
    events RewardDistributed(
        address indexed user,
        uint256 amount
        );

    ~ The staking contract react when RewardDistributed is emited


    7.) Transparency and Auditability

    ~ Events create a verifiable history of contract interactions.
    ~ Example --> DAOs use events to log proposal results.

    Code --> 
    event ProposalExecuted(
        uint256 indexed proposalId, 
        bool success
        );


        ----Limitations of Events----

    ~ Not accessible on-chain: EVents are stored in logs, not in contract state.
    ~ Events data is immutable: Once emited, it can't be changed or removed.
    ~ Limited indexable fields: Only 3 parameters can be indexed (indexed keyword).


*/
