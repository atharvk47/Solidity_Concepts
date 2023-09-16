//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// assert(bool condition) causes a Panic error and 
// thus state change reversion if the condition is not met - to be used for internal errors.

contract ExceptionExample {

    mapping(address => uint8) public balanceReceived;

    function receiveMoney() public payable {
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);
        assert(balanceReceived[msg.sender] >= uint8(msg.value));
    }

    function withdrawMoney(address payable _to, uint8 _amount) public {
        require(_amount <= balanceReceived[msg.sender], "Not Enough Funds, aborting");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}

// The big difference between the two is that the assert() function when false, uses up all the remaining gas and
// reverts all the changes made.
// Meanwhile, a require() function when false, also reverts back all the changes made to the contract but does refund 
// all the remaining gas fees we offered to pay.