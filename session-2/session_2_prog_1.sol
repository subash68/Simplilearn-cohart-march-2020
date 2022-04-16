// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ClassType {
    // 1. local variable
    // 2. state variable
    // 3. global variable

    // msg.sender
    // msg.value
    // block



    uint8 public uint8Var = 1; 
    uint public uintVar = 678; // 256 bits -> uint256 
    uint public uintDefault;

    bool public boolVar = true; // false
    // [0-F]
    bytes public c = "str";
    bytes public a = "0x765"; // 
    bytes32 b = "";  // [00100110] => 0xabc

    bytes1 aa = 0xb5;
    bytes1 bb = 0x56;
    
    // assignment 1: do bitwise operations on bytes


    string strVar = "sample string";

    enum CandidateType {
        Student,
        Teacher,
        Host
    }

    CandidateType public candType = CandidateType.Student;

    function setCandidate() public {
        // string memory str2Var = "local variable";
        candType = CandidateType.Student;
    }

    // 0x00000000

    address public caller = address(0);
    function setCaller() public {
        caller = msg.sender;
    }

    // address() -> ?

    // dynamic key - value pair array
    mapping (address => uint256) public accountBalances;
    mapping (address => mapping(address => uint256)) public delegatedBalances;
    // mat[0][0]
    // set balance for the caller
    function setBalance(uint256 balance) internal {
        accountBalances[msg.sender] = balance;
        // delegatedBalances[msg.sender][address(0x5Cbaa277cfe43068E9B5B312582eB95c8b3DaE41)] = 1888;
    }

    function ValidateAndSet() public {
        // validation on wallet 
        // someother operation
        // conditional statement -true set balance
        setBalance(650);

    }

    


    // 1. Marketplace -> sell items -> structure
    // 2. list an item (address) for sale -> address, owner, price
    // 3. buy an item
    //     1. it gets transferred to your wallet. Hint: How it is stored in your marketplace contract.
    
    // 0 - 9
    // for(intializer uint i = 10; condition i >= 0;  incrementer)
    // { 10

    // }
}