// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract mycontract{
    uint public myuint =123;
    function setMyunit(uint newUint) public {
        myuint =newUint;
    }
}