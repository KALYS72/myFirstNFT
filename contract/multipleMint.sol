// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract QuickNodeNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter; 
    Counters.Counter private _counter; // отвечает за уникальные ID токенов

    uint256 public maxSupply; // максимально возможное количество токенов
    uint256 public totalSupply; // текущее количество токенов

    string public baseTokenURI; // отвечает за базовый IPFS новых токенов

    bool public isMintEnabled = false;

    mapping(address => uint256) public mintedWallets; //  отслеживает количество купленных токенов каждого покупателя

    constructor(string memory _baseTokenURI, uint256 _maxSupply) ERC721("NIKE", "NKE") {
        maxSupply = _maxSupply;
        baseTokenURI = _baseTokenURI;
    }


    // =================Публичное создание токена============================
    function publicMint() external payable{
        require(isMintEnabled == true, "Minting is not enabled!"); // включена ли продажа
        require(totalSupply < maxSupply, "We are sold out!"); // не превышен ли лимит
        require(msg.value == 0.01 ether, "Insufficient funds"); // проверка предоставленной суммы
        require(mintedWallets[msg.sender] == 0, "Number of allowed tranzactions exceeded");
        internalMint(baseTokenURI);
    }


    // ==================Создание токена админом==============================
    function adminMint(string memory _tokenURI) public onlyOwner {
        internalMint(_tokenURI);
        mintedWallets[msg.sender]++;
        totalSupply++;
    }


    // ===============Массовое создание токенов=============================
    function adminMassMInt(string memory _tokenURI, uint256 amount) external onlyOwner {
        for (uint256 i = 0; i < amount; i++) {
            adminMint(_tokenURI);
            mintedWallets[msg.sender]++;
            totalSupply++;
        }
    }
    

    // ==================Базовое создание токена=============================
    function internalMint(string memory tokenURI) internal { 
        uint256 newTokenID = _counter.current();
        _counter.increment();
        mintedWallets[msg.sender]++;
        totalSupply++;  
        _mint(msg.sender, newTokenID);
        _setTokenURI(newTokenID, tokenURI);
    }


    // ==================Перевод токена======================================
    function transferToken(address _to, uint256 _tokenId) external {
        address owner = ownerOf(_tokenId);
        require(msg.sender == owner, "This token is not yours!");
        _safeTransfer(owner, _to, _tokenId, "");
    }



    // =================Панель управления Админа=============================
    function setMaxSupply(uint256 newMaxSupply) external onlyOwner {
        maxSupply = newMaxSupply;
    }

    function setBaseTokenURI(string memory newTokenURI) external onlyOwner {
        baseTokenURI = newTokenURI;
    }

    function setMinting (bool newMintingValue) external onlyOwner {
        isMintEnabled = newMintingValue;
    }
    // =====================================================================


    // ======================Вывод средств==================================
    function withdraw(address payable _addr) external onlyOwner {
        uint256 balance = address(this).balance;
        _addr.transfer(balance);
    }
}