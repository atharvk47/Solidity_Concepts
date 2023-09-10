//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ExampleViewPure {

    uint public myStorageVariable;

    function getMyStorageVariable() public view returns(uint) {           // view function
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {      // pure function
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public returns(uint) {    // simple function
        myStorageVariable = _newVar;
        return _newVar;
    }

    // Explanation:
    // 1) myStorageVariable is a state variable (initialized to zero).
    // 2) getMyStorageVariable() is a view function returns the value of myStorageVariable(a state variable)
    // 3) getAddition() is a pure function which returns the sum of two parameters and is a pure function excluding state variables.abi
    // 4) setMyStorageVariable() is a simple function modifying and returning the state variable.
}
