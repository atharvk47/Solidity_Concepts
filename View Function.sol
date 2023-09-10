//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// In Solidity, a function that only reads but doesn’t alter the state variables defined in the contract is called a View Function.
// A view function is a read-only function which does not allow modification of state variables.

contract ViewExample {
    uint number1 = 10;      // a state variable

    function getSum(uint number2, uint number3) public view returns(uint) {
    uint sum = number1 + number2 + number3;
    // number1 = 6;        // If the given line is uncommented, compiler produces an error. This error occurs because of 'view' keyword.
    return sum;
  }

// Explanation:
// 1)We declare a static variable number1.
// 2)We define a view function named getSum().
// 3)This function accepts two parameters number2 and number3, calculates the sum of number1, number2, and number3, 
//  and returns the sum.
// 4)Since getSum() is a view function, we can read variable number1 but can’t modify it.

}
