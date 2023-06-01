// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyStruct {
    mapping(uint => human) phoneBook;

    struct human {
        string name;
        uint age;
    }

    function addNumber(uint id, string memory name, uint age) public {
        phoneBook[id] = human(name, age);
    }
}