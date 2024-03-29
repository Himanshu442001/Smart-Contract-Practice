//SPDX-License-Identifier: MIT

// In this program/Smart Contract we are dealing with how to deploy one smart contarct into another smart contarct
pragma solidity 0.8.8;
import "./simpleStorage.sol";

contract storageFactory{
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
       SimpleStorage simpleStorage = new SimpleStorage();
       simpleStorageArray.push(simpleStorage);

    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}