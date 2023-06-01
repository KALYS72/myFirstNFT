// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;                                                         


contract MyMapping{
    mapping(uint => string) public rooms;

    constructor () {
        rooms[1] = "Adam";
        rooms[2] = "Bruce";
        rooms[3] = "Karl";
    }

    function addName(uint room, string memory name) public {
        require(rooms[room] == "", "this room is not avialible!")
        rooms[room] = name;
    }

    mapping(address => uint) votes;

    function vote(address voter) public {
        votes[voter]++;
    }
    
}

// создайте mapping ages
// ключями будут address а значениями uint
// создайте функцию addAdress что принимает address и age 
// подставьте в mapping и проверьте результат