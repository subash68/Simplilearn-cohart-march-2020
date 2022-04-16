// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewOrPure {
    uint public num = 10;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }


    function setValue(uint value) public onlyOwner{
        num = value;
    }

    function setValue(uint value, uint inc) public onlyOwner returns(uint){ // signature
        num = value + inc;
        return num;
    }

    // view - read the state variables
    function addNum(uint y) public view returns(uint) {
        // num = num + y;
        return num + y;
        // return num ; // change
    }


// pure - promises not to modify or ready from the state variable
    function getNum(uint i, uint j) public pure returns(uint) {
        return i + j;
    }

}