// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import "./parent Inh.sol";

contract secondContract is firstContract {
    function add() public view returns (uint) {
        return myNumber + 5;
    }
}

// создать 2 файла mother и daughter
// в mother создайте переменную myAge типа uint 
// в daughter создайте переменную herAge и создайте функцию decreaseAge
// функция должна брать переменную myAge и уменьшить на перменную herAge
// возвращает результат