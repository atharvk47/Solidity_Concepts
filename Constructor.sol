//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// constructor() is a special function that is called only once during contract deployment.
// Function is same as in OOPs.

contract ExampleConstructor {

    address public myAddress;

    constructor(address _someAddress) {
        myAddress = _someAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }

}