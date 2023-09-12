// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

// Mapping is identical to a dictionary in every other programming language. 
// In Solidity, it’s a hash table that stores data as key-value pairs, with the key being any of the built-in data types 
// but not reference types, and the value being any type.

// mapping(key => value) <access specifier> <name>;

contract mapping_sample {
	
	//Defining structure
	struct worker
	{
		string worker;
		string duty;
		uint8 renumeration;
	}
	
	// Creating a mapping
	mapping (address => worker) result;
	address[] public worker_result;	
}


// Explanation:
// We define a contract.
// We define the structure for the worker.
// We declare the different structure elements regarding the worker.
// We create the mapping.