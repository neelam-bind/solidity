// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract SendWithdrawMoney {
    uint public balancedreceivde;

    function deposite() public payable {
        balancedreceivde = msg.value;
    }
    function getContractBalance() public view returns (uint)  {
        return address(this).balance;
    }

    function withdraAll() public {
        address payable to = payable(msg.sender);
            to.transfer(getContractBalance()); 
    }
    function withToadress(address payable to ) public {
        to.transfer(getContractBalance()); 
    }

}