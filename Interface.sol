// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface Calculator {
   function getResult() external view returns(uint);
}
contract Test is Calculator {
   //constructor() public {}
   function getResult() external pure returns(uint){
      uint a = 1; 
      uint b = 2;
      uint result = a + b;
      return result;
   }
}

// Interfaces are similar to abstract contracts and are created using interface keyword. 
// Following are the key characteristics of an interface.

// Interface can not have any function with implementation.
// Functions of an interface can be only of type external.
// Interface can not have a constructor.
// Interface can not have state variables.
// Interface can have enum, structs which can be accessed using interface name dot notation.