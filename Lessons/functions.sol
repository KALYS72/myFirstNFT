// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Myfunctions {
    string public say = "";
    
    function sayHello() public {
        say = "Hello!";
    }

    function sayBye() public {
        say = "Bye!";
    }

    function reset() public {
        say = "";
    }

    function sayMyWord(string memory word) public {
        say = word;
    }


// view - функция может просматривать переменные но не может их менять
    string private myName = "Karl";

    function sayMyName() public view returns(string memory){
        return myName;
    }


// pure - функция не имеет никакого доступа к информации из контракта
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }


// internal - функция не может быть вызвана из контракта кроме как в самих функциях
    function decrease(uint numberOne, uint numberTwo) internal pure returns(uint) {
        return numberOne - numberTwo;
    }


// external - функция не может быть вызвана внутри функций кроме как в контракте
    function multiply(uint multiplier, numOne, numTwo) external pure returns(uint) {
        uint result = decrease(numOne, numTwo) * multiplier;
        return result;
    }
}

// создайте переменную number
// создайте функцию increment что добавляет к ней единицу
// создайте функцию decrement что сокращает ее число
// создайте функцию reset что обнуляет ее значение