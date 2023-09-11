//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// To define a Struct, you must use the struct keyword. The struct keyword defines a new data type, with more than one member.

// Syntax:
// struct struct_name { 
//    type1 type_name_1;
//    type2 type_name_2;
//    type3 type_name_3;
// }

contract test {
   struct Book { 
      string title;
      string author;
      uint book_id;
   }
   Book book;

   function setBook() public {
      book = Book('Learn Solidity', 'TP', 1);       // Direct way to add values in a struct variable.
   }
   function getBookId() public view returns (uint) {
      return book.book_id;                          // Access any member of the struct using id(.) operator
   }
}

// Given is a test contract which sets the 'book' datatype using the primitive data types like uint, strings.
