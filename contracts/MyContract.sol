// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract MyContract {
    string public ourString = "Hello world!";
    //constructor() payable {}

    function updateOurString(string memory _updateString) public payable  {
        if(msg.value == 1 wei){
            ourString=_updateString;
        }else{
            payable(msg.sender).transfer(msg.value);
        }
    }
}