// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract myConstructor {
    address public owner;
    uint public number;

    constructor (uint _number) {
        owner = msg.sender;
        number = _number;
    }

    function add (uint myNumber) public view returns(uint) {
        return myNumber + number;
    }

}

/* Создайте смарт-контракт, который имеет конструктор,
принимающий на вход имя и возраст человека,
и сохраняющий эти данные в переменных контракта. */