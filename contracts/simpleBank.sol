// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleBank {
    mapping(address => uint) public balances;

    // Deposit Ether into the bank
    function deposit() public payable {
        require(msg.value > 0, "Deposit must be more than 0");
        balances[msg.sender] += msg.value;
    }

    // Withdraw Ether from the bank
    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        balances[msg.sender] -= _amount;

        // Transfer the amount back to the sender
        payable(msg.sender).transfer(_amount);
    }

    // Get balance of the sender
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
