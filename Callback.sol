// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

// The solidity fallback function is executed if none of the other functions match the function identifier or no data 
// was provided with the function call. Only one unnamed function can be assigned to a contract and it is executed whenever
// the contract receives plain Ether without any data.
// Properties of a fallback function:
// 1) Declare with fallback() and have no arguments.
// 2) If it is not marked payable, the contract will throw an exception if it receives plain ether without data.
// 3) Can not return anything.
// 4) It is mandatory to mark it external.
// 5) It is limited to 2300 gas when called by another function by using transfer() or send() method . 

contract Parent {
    uint public parentVariable;

    function parentFunc(uint _parentVariable, function(uint) external _callback) public {
        parentVariable = _parentVariable;
         _callback(_parentVariable * 2);
    }
}

contract Child {
    address public parentAddress;
    uint public childVariable;

    constructor(address _parentAddress) {
        parentAddress = _parentAddress;
    }
    
    function run(uint _newVar) public {
        Parent(parentAddress).parentFunc(_newVar, this.callback);
    }
    
    function callback(uint _childVariable) external {
        childVariable = _childVariable * 2;
    }
}

// This code is an example of how contracts can interact with each other using callbacks. 
// The run function of the Child contract calls the parentFunc() function of the Parent contract, 
// and the parentFunc() function in turn calls the callback() function of the Child contract.
