// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_two_Function_and_Visibilty_modifiers {
    /* 
    Functions and Visibilty MOdifiers in Solidity.

    It means functions and state variable can be accssed within and outside the contract.


    Modifier    Accessible within   Derived     Other       External
                Contract            Contract    Contract    Calls

    public      YES                 YES         YES         YES
    private     YES                 NO          NO          NO
    internal    YES                 YES         NO          NO
    external    NO                  NO          YES         YES
*/

    /* 
        DIFFRENCE BETWEEN INTERNAL AND EXTERNAL FUNCTION !


        INTERNAL FUNCTION -->

        Can be called:
        ~ Inside the contract itself by the derived(child) contract(inheritance).
        ~ Can't be called externally.


        EXTERNAL FUNCTION -->

        Can be called:
        ~ From other contracts.
        ~ From transaction(externally).
        ~ Can't be called inside the same contract.

*/

    /* 

        DIFFRENCE BETWEEN VEIW AND PURE 


    Modifier    Can Read    Can modify      Example Use 
                State?      State?          Case

    veiw        YES         NO              Getting store            
                                            Data
                                            (getBalance())


    pure        NO          YES             Performance calculation
                                            (addNumber())


    When to use veiw and pure  -->

    In solidity both pure and view function do not modify the blockchian state.

    view --> when the function reads state variable but does not modify them.

    pure --> when the function does not read or modify state variables. It should work only with local variable or parameter.

*/

    // Public functions generate an auto-generatedd getter function for state variables.

    function publicFunction() public pure returns (string memory) {
        return "Public Function";
    }

    /* For calling the private function we need to make function that needs to be public.

    putinf (_)underscore is the naming convention so developer can easily reconige that this is the private/internal function.

    */

    function _privateFunction() private pure returns (string memory) {
        return "Private Function!";
    }

    function callPrivateFunction() public pure returns (string memory) {
        return _privateFunction();
    }

    /* 
        It is used in the scenario where we need to call a function from one contract to another
    
    */

    function _internalFunction() internal pure returns (string memory) {
        return "Internal Function !";
    }

    function externalFunction() external pure returns (string memory) {
        return "External function!";
    }
}

// In the new contract we are calling the internal function.

contract ChildContract is Day_two_Function_and_Visibilty_modifiers {
    function callInternalFunction() public pure returns (string memory) {
        return _internalFunction();
    }
}
