// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_five_Error_Handling {
    uint256 public counter;

    // require: Input Validation
    function setCounter(uint256 _newCounter) public {
        require(_newCounter < 0, "Counter must be greater than zero");
        counter = _newCounter;
    }

    function checkValue(uint256 _value) public pure {
        if (_value == 0) {
            revert("Value can't be zero");
        }
    }

    function checkInvariant(uint _value) public pure {
        assert(_value != 0);
    }
}

/* 

        --- Error Handling in Solidity: require, assert, and resvert ---

    Solidity provides three main erroe handling mechanism to ensure smart contract security and correctness. They help prevent invalid operations, enforce conditions, and save gas by stopping execution early.


    1.) require --> Input Validation and Condition checking.

    ~ Used to validate inputs, check external calls, and ensure condition are met.
    ~ If the condition is false, execution reverts and return gas left.
    ~ Best For: User input validation and checking external calls.
    ~ Exmaple --> Validating function inputs
    
    Code --> 
    function setAge(uint256 _age) public {
        require(_age > 0, "Age must be greater than zero");
        age = _age;
        }

    ~ If _age is 0, the transaction revert with "Age must be greater than zero".

    Example --> Ensuring contract balance is sufficient
    Code --> 
    function withdraw(uint256 _amount) public {
        require(_amount <= address(this).balance, "Insufficient funds");
        payable(msg.sender).transfer(_amount);
        }

    ~ Ensure the contract has enough balance before sending funds.


    2.) assert - Internal Invariants and Critical checks

    ~ Used for checking internal logic and state consistency.
    ~ ifFalse, it cause a Panic(0x01) and consumes all the gas.
    ~ Best for: Verifying code correctness, never for user input validation.
    ~ Example --> Ensuring state variable remain valid.

    Code --> 
    function decrement() public {
        assert(counter > 0);  // Should never be negative 
        }

    ~ If counter is 0, assert will cause a panic error and consume all the gas.

    ~ Example --> Checking contract balance.
    Code -->
    function checkBalance() public view {
        assert(address(this).balance >= 0); // Should always be true
        }
    
    ~ This should never fail under normal condition.


    3.) revert - Custom Error Handling and Conditional Failures.

    ~ Similar to require but allows more complex logic before failing.
    ~ Saves gas by returning unused gas.
    ~ Best for: Custom error message and complex condition handling.
    ~ Example --> Using revert for conditional failures.
    
    Code -->
    function transfer(address _to, uint256 _amount) public {
        if(_amount > balance[msg.sender]) {
        revert("Not enough tokkens");    
        }
        balanceOf[msg.sender] -= _amount;
        balance[_to] += _amount;
    }

    ~ If the sender has insufficent balance, the transaction fails with "Not enough tokens".

    ~ Example --> Using Custom Error (More Gas Efficient), Solidity allow this feature in 0.8.4+ version using error.

    Code --> 
    error InsufficientFunds(uint256 requested, uint256 available);
    function withdraw(uint256 _amount) public {
        if(_amount > address(this).balance) {
        revert InsufficientFunds(_amount, adress(this).balance);
        }
        payable(msg.sender).transfer(_amount);
    }

    ~ Custom error save gas compared to require because they don't store long error messages.

----------------------------------------------------------


Function        Used For                     Revert With              Gas Usage                     Example

require        User input validation        Error message            Refunds remaining gas         Checking balances, valid inputs
                & external calls 
        
 assert         Internal consistency         Panic (0x01)             Consumes all gas              Prevent impossible states 
                checks & invariants


revert          Custom error handling        Custom message          Refunds remaining gas          Handling multiple conditions
                                             or error

----------------------------------------------------------

*/
