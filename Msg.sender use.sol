// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Test
{
	mapping (address => uint) rollNo;
	
	// Defining a function to use
	// msg.sender to store roll no.
	function setRollNO(uint _myNumber) public
	{
		rollNo[msg.sender] = _myNumber;             // Update our 'rollNo' mapping to store '_myNumber' under 'msg.sender'
	}
	
	function whatIsMyRollNumber() public view returns (uint)
	{
		return rollNo[msg.sender];                 // Retrieve the value stored in the sender's address Will be `0` 
                                                   // if the sender hasn't called `setRollNO` yet
	}
}
