// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import "./parent Inh.sol";

contract secondContract is firstContract {
    function add() public view returns (uint) {
        return myAge + 5;
    }
}