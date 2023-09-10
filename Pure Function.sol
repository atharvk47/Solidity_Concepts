//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// In Solidity, a function that doesn’t read or modify the variables of the state is called a pure function. 
// It can only use local variables that are declared in the function and the arguments that are passed to the function to 
// compute or return a value.

contract PureExample {
    uint number1 = 6;
    function getNum(uint number2) public pure returns(uint) {
    //number1 = number2;            // If these 2 lines are uncommented, compiler produces error because of 'pure' keyword.
    //return number1;
  }

  // Explanation:
  // 1) We declare a static variable number1.
  // 2) We define a view function named getNum().
  // 3) getNum() takes a number and tries to modify static variable using it which will produce error since pure functions do not allow
  // to read and write these variables.

  function getSum(uint number3, uint number2) public pure returns(uint) {
    uint sum = number3 + number2;
    return sum;
  }

  // Explanation:
  // We define a pure function named getSum().
  // getSum() function accepts two parameters number1 and number2, and calculates their sum.
  // The function returns the sum.
  // Since the function getSum() doesn’t read or modify any state variables, it is considered a Pure function.
}