//"Create a wallet contract that records the sender address and amount whenever someone sends Ether to it.
// Store this information in a separate contract for modularity."


// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract Wallet {
    
    paymentReceived public payment;
    function payContract() public payable{
        payment = new paymentReceived(msg.sender ,msg.value);
    }
}

contract paymentReceived {
    address public from;
    uint public amount;


    constructor(address _from , uint _amount ) {
        from =_from;
        amount=_amount;
    }
}