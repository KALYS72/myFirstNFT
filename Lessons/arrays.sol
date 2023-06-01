// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Arrays{
    uint[] public  uintArray = [1,2,3] ;
    uint[5] public myUintArray;
    string[] public stringArray = ["Apple", "Banana", "Carrot"];
    uint[][] public array2D = [ [1,2,3], [4,5,6] ]; // 0,0 = 1    1,2 = 6
    string[] public values;

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function addValueByIndex(uint _index, string memory _value) public {
        values[_index] = _value;
    }

    function valueCount() public view returns (uint) {
        return values.length;
    }

    function popLastElement() public {
        values.pop();
    }
}

// создайте список numbers
// создайте функции addNumber, addNumberByValue и numbersLength
// добавьте числа с одного до 10