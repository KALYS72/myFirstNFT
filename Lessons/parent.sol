// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract firstContract {
    uint public myNumber = 17;

    function hello (string memory name) public pure returns (string memory){
        string memory concatenatedString = string(abi.encodePacked("Hello ", name));
        return concatenatedString; 
    }
}