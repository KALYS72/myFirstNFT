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

    function getNumber (uint id) public view returns (human memory) {
        return phoneBook[id];
    }

    function updateNumberAge(uint id, uint newAge) public {
        phoneBook[id].age = newAge;
    } 
}

// создайте struct product с аттрибутами string name и uint price
// создайте mapping с названием productList с ключом uint и значением struct product
// создайте функцию addProduct что принимает id, name и price а затем доавбляет в productList
// создайте функцию getProduct что принимает id и возвращает продукт