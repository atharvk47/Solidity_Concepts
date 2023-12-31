//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Search {
   function indexOf(uint[] storage self, uint value) public view returns (uint256) {
      for (uint i = 1; i < self.length; i++) if (self[i] == value) return i;
      return 0;
   }
}
contract Test {
   uint[] data;
   constructor() public {
      data.push(1);
      data.push(2);
      data.push(3);
      data.push(4);
      data.push(5);
   }
   function isValuePresent() external view returns(uint){
      uint value = 4;
      
      //search if value is present in the array using Library function
      uint index = Search.indexOf(data, value);
      return index;
   }
}