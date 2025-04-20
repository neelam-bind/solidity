// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleBank {
    mapping(address => uint) public balances;

    
    // Get balance of the sender
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    event DepositMade(address indexed from, uint amount);
    event WithdrawalMade(address indexed to, uint amount);

    function deposit() public payable {
        require(msg.value > 0, "Deposit must be more than 0");
        balances[msg.sender] += msg.value;
        emit DepositMade(msg.sender, msg.value); 
    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit WithdrawalMade(msg.sender, _amount);
    }
}
