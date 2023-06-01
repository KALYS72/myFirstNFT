// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract myLoop {
    uint public number;

    function add () public {
        number = number + 10; 
    }

    function multiAdd (uint times) public {
        for (uint256 i = 0; i < times; i++) {
            add();
        }
    }

    uint[] myArray = [1, 2, 3, 4, 5];

    function sum () public view returns(uint) {
        uint result;
        for (uint i = 0; i < myArray.length; i++) {
            result = result + myArray[i];
        }
        return result;
    }

}

// напишите функцию что принимает 2 аргумента: loopTimes, minusNumber
// внутри функции создайте число типа int: result со значением 100
// создайте цикл по числу loopTimes
// с каждым циклом минусуйте с result по minusNumber
// верните result 