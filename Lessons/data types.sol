// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyContract {
    string public myString = "Hello World!";
    bytes32 public myBites23 =  "Hello World!";
    int public myInt = -1;
    uint public myUint = 1;    // default: 256
    uint256 public myUint256 = 1; // Больше места. Больше затрат.
    uint8 public myUint8 = 1; // Не вместительный. Мало стоит.
    bool public isOpen = true;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    

    uint256 private myNumber;

    function setMyNumber(uint newNumber) public {
        myNumber = newNumber;
    }

    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }
}



/* ERC20 и ERC721 - это два разных стандарта токенов на блокчейне Ethereum.

ERC20 - это стандарт для создания токенов, которые могут быть обменены на Ethereum
с использованием умных контрактов. Эти токены являются однородными,
что означает, что все токены одного типа имеют одинаковую стоимость и функциональность.
Такие токены обычно используются для финансовых целей, таких как сбор средств во время ICO,
обмен токенов на криптовалютные биржах и т.д.

ERC721 - это стандарт для создания неповторимых токенов, каждый из которых имеет уникальную идентификационную метку. 
Эти токены являются непохожими, что означает, что каждый токен может иметь свою уникальную стоимость и функциональность. 
Такие токены обычно используются для создания цифровых активов, таких как искусство, игровые предметы, недвижимость и 
т.д.

Таким образом, ERC20 и ERC721 отличаются функциональностью и назначением.
ERC20 используется для создания однородных токенов, которые можно обменять на криптовалютные биржах
или использовать для других финансовых операций. ERC721 используется для создания неповторимых токенов, 
которые могут быть использованы для создания цифровых активов и других сценариев, где требуется уникальность. */