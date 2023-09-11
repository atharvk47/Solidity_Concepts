//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.

// Enums allow us to bin or categorize the continuous values into the discrete values.

contract Order {
   enum OrderSize{ SMALL, MEDIUM, LARGE }                       // Declaring an enum
   OrderSize choice;                                         
   OrderSize constant defaultChoice = OrderSize.MEDIUM;         // Default choice to 'medium'

   function setLarge() public {
      choice = OrderSize.LARGE;                                 // Setting choice to 'large'
   }
   function getChoice() public view returns (OrderSize) { 
      return choice;                                            // Returning the choice
   }
   function getDefaultChoice() public pure returns (uint) {
      return uint(defaultChoice);                               // Returning the index of the default choice
   }
}
