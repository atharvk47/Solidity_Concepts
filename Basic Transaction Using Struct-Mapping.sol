// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingsStructExample {
     struct Transaction {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numDeposits;
        mapping(uint => Transaction) deposits;
        uint numWithdrawals;
        mapping(uint => Transaction) withdrawals;
    }

    mapping(address => Balance)  public BalanceReceived;

    function getBalance (address _addr) public view returns (uint){
        return BalanceReceived[_addr].totalBalance;              // Retrieving the entire balance of the account
    }

    function depositMoney() public payable {
        BalanceReceived[msg.sender].totalBalance += msg.value;   // Incrementing the balance of the receiver
        
        Transaction memory deposit= Transaction(msg.value, block.timestamp);   // Recording the deposit
        BalanceReceived[msg.sender].numDeposits++;
        BalanceReceived[msg.sender].deposits[BalanceReceived[msg.sender].numDeposits] = deposit;
    }

    function withdrawMoney(address payable _to, uint amt) public  {
        BalanceReceived[msg.sender].totalBalance -= amt;         // Decrementing th balance of the sender

        Transaction memory withdrawal = Transaction(amt,  block.timestamp);   // Recording the withdrawal
        BalanceReceived[msg.sender].withdrawals[BalanceReceived[msg.sender].numWithdrawals] = withdrawal;
        BalanceReceived[msg.sender].numWithdrawals++;

        _to.transfer(amt);
    }

    function getDeposit( address _from, uint NumDeposit) public view returns (Transaction memory) {
        return BalanceReceived[_from].deposits[NumDeposit];
    }
}
