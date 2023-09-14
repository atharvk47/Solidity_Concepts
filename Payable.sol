//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

// The payable modifier tells solidity that the function is expecting eth to receive. 
// In Remix IDE, payable function shows red color button on deploying.

contract SampleContract {
    string public myString = "Hello World";

    function updateString(string memory _newString) public payable {
        myString = _newString;
    }
}