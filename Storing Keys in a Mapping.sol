//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Solidity does not provide a way to directly access the keys of a HashMap. 
// However, we can explicitly maintain a dynamic array that keeps hold of all the keys and an additional HashMap to check whether 
// the key exists.

contract Persons {

  uint[] keys;                                     // For storing keys

  mapping (uint => string) names;                  // Main Map for storing data

  mapping (uint => bool) checks;                   // Additional Map for checking if key exists

  function setPerson(uint id, string memory name) public {
         
         if (!checks[id]) {
             keys.push(id);
             checks[id] = true;
         }
        
         names[id] = name;
  }

  function getKeys() public view returns(uint[] memory){
    return keys;
  }
}

// We create a utility function to insert/update the main HashMap 'names'. The function checks if the key was previously present or not.
// If not inserted previously, it adds the key inside the array 'keys' and updates the additional HashMap 'checks' against that key.
// In the end, we create a read-only/view function that returns the array 'keys' holding all the keys.
