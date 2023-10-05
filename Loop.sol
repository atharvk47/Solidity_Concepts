// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
 
contract Test { 
	
	// Declaring a dynamic array 
	uint[] data; 

	// Defining a function 
	// to demonstrate 'For loop' 
	function loop( 
	) public returns(uint[] memory){ 
	for(uint i=0; i<5; i++){ 
		data.push(i); 
	} 
	return data; 
	} 


    // In solidity, a loop is very similar to what it means in any other programming language.
    // We can execute a for loop, while loop and do-while loop in a similar fashion in solidity.
    // Try running the code on remix to verify.
    }
