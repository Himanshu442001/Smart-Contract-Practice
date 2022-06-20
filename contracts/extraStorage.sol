//SPDX-License-Identifier:MIT
//In this smart contract/program we learn the principle of inheritance and override

pragma solidity 0.8.8;

import "./simpleStorage.sol";

contract  extraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
 





