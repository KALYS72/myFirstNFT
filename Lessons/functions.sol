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


    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function anotherAdd(uint _a, uint _b) public pure returns(uint) {
        uint result = add(_a, _b);
        return result;
    }


    // public - Доступна везде. Позволяет видеть все переменные типа public
    // private - недоступна нигде кроме логики внутри контракта. 
    // internal - может быть вызвана только изнутри
    // external - может быть вызвана только снаружи

    // pure - не влияет ни на что и не имеет доступа
    // view - не влияет но имеет доступ к ним
}