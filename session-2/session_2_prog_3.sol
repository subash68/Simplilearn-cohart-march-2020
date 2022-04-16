// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// libraries
// openzeppelin
import "./contractA.sol";

contract Event {
    // event defined

    event Log(address indexed receiver, string message);

    function sendTransfer() public{
        // Make transfer operation
        emit Log(msg.sender, "transfer successful");
    }
}


/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract B is A {
    function foo() public pure virtual override returns(string memory) {
        return "B";
    }
}

contract C is A {
    function foo() public pure virtual override(A) returns(string memory) {
        return "C";
    }
}

contract D is B, C {
    function foo() public pure virtual override(B, C) returns(string memory) {
        return super.foo(); // C
    }
}