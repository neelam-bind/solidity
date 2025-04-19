// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract Withdrawal {
    mapping(address =>uint ) public balancedRecevied;

    function sendMoney() public payable{
        balancedRecevied[msg.sender] += msg.value;  
    } 
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withAllMoney(address payable _to) public {
        uint balanceToSend = balancedRecevied[msg.sender];
        balancedRecevied[msg.sender] =0;
        _to.transfer(balanceToSend);
    }
}