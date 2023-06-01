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
        rooms[room] = name;
    }

    function deleteRoom(uint room) public {
        require(bytes(rooms[room]).length > 0, "this room does not exist");
        delete rooms[room];
    }

}