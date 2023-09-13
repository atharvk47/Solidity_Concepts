//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Wallet {
    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived (msg.sender, msg.value);
    }
    
}

contract PaymentReceived {
    address public from;
    uint public amount;
    
    constructor(address _from, uint _amount){
        from =_from;
        amount = _amount;
    }
}

contract PaymentWallet{
    struct PaymentReceivedStruct {
        address from;
        uint amt;
    }

    PaymentReceivedStruct public paymentnew;

    function NewPayment () public payable {
        paymentnew.from = msg.sender;
        paymentnew.amt = msg.value;
    }
}