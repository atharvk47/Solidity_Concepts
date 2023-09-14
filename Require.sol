//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// The require function is used to verify inputs and conditions before execution. 
// For instance, if the condition is false, then the require function immediately stops execution.

// Syntax:
// require(condition, code to exceute when false)

contract ExceptionExample {

    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "Not Enough Funds, aborting");

        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}