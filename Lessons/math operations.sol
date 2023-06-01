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
}
    // создайте число со значением 10
    // умножьте на 55
    // разделите на 5
    // возведите в 3 степень 
    // верните остаток от деления на 10