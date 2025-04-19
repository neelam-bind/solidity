// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract Exmapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool ) public myAddressMapping;
    mapping(uint =>mapping(uint=> bool)) public myMap;


    function setMyMap( uint _index ) public{
        myMapping[_index] = true;
    } 

    function setMyAddressMap( ) public{
        myAddressMapping[msg.sender] = true;
    } 
}
