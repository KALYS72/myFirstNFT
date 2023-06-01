// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;     

contract MyLogic {
    uint public number;

    constructor (uint _number) {
        number = _number;
    }
    
    function isMoreThan10 () public view returns(bool) {
        if (number > 10) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function isDividible (uint i) public pure returns (bool){
        if (i % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    function divide(uint num1, uint num2) public pure returns (uint) {
        require(num1 != 0, "The first number is zero!");
        require(num2 != 0, "The second number is zero!");
        return num1 / num2;
    }

    bool public allowAdding = false;
    uint public mainNumber;

    function add(uint) public {
        require(allowAdding == true, "adding is not allowed!");
        mainNumber++;
    }

    function editAllowing(bool answer) public {
        allowAdding = answer;
    }
}
// создайте функцию isRight что принимает uint num
// число должно быть большк 10 и меньше 10 000
// оно должно быть способным делится на 2
// если все правильно то оно должно возвращать bool значение true