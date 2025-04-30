
// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract ExampleMappingStruct {
    
    struct Transaction{
        uint amount;
        uint timestamp;
    }

    struct Balance{
        uint totalBalance;
        uint numDeposits;
        mapping(uint => Transaction) deposits;
        uint numWithdrawals;
        mapping(uint=>Transaction ) withdrawals;
    }

    mapping(address => Balance) public balances;

    function depositeMoney(address _from , uint _numDeposit) public view returns (Transaction memory) {
        return balances[_from].deposits[_numDeposit];
    }

    function depositeMoney() public payable{
        balances[msg.sender].totalBalance += msg.value;
        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposits[balances[msg.sender].numDeposits]= deposit;
        balances[msg.sender].numDeposits++;
    }
    function withdrawMoney(address payable _to,uint _amount) public{

        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdrawal = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdrawals[balances[msg.sender].numWithdrawals]=withdrawal;
        balances[_to].numWithdrawals++;

        _to.transfer(_amount);
    }
}