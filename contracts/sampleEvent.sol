// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract EventExample{
    mapping(address =>uint )public tokenBalance;
    

    event Tokensent(address _from ,address _to,uint _amount);
    
    constructor(){
        tokenBalance[msg.sender] = 100;
    }

    function sendToken(address _to, uint _amount) public returns(bool){
        require(tokenBalance[msg.sender] >= _amount,"not enough money");
        tokenBalance[msg.sender]-= _amount;
        tokenBalance[_to] += _amount;  
        
        emit Tokensent(msg.sender, _to, _amount);
        return true; 
    }
}