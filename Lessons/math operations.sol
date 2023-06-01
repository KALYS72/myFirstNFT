// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


contract MyMath {
    

    function all() external pure returns(uint){
        uint a;
        a = a + 1; // 1
        a ++; // 2
        a = a * 2; // 4
        a = a ** 2; // 16
        a = a / 2; // 8 
        a = a - 1; // 7
        a --; // 6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
        return a;
    }

    function isDividible (uint number) public pure returns (bool){
        if (number % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0 && a != 0 , "Division by zero is not allowed");
        uint256 result = a / b;
        return result;
    }

    // создайте число со значением 10
    // умножьте на 55
    // разделите на 5
    // возведите в 3 степень 
    // оставьте остаток от деления


}