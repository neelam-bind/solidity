// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract wallet {
    paymentRecieved public payment;

    function payContract() public payable {
        payment =new paymentRecieved(msg.sender, msg.value);
    }
}

contract paymentRecieved{
    address public from;
    uint public amount ;


    constructor(address _from ,uint _amount){
        from =_from;
        amount=_amount;
    }
}


contract walllet2{

    struct paymenttReceivedstruct {
        address  from;
        uint  amount ;
    }

paymenttReceivedstruct  public  payment ; 
    function payContract() public payable {
        payment.from = msg.sender;
        payment.amount = msg.value;

    }
    

}

