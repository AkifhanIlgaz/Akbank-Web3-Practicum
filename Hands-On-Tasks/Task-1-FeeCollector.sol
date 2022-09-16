// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FeeCollector {
  address public owner; 
  uint256 public balance; // Since we only deposit ether, we can access balance of the contract by address(this).balance

  constructor() {
    owner = msg.sender; // Owner of the contract is the address that deploys it
  }
  
  // receive function is used to handle when the contract receives ether
  receive() external payable {
    balance += msg.value; // msg.value is the ether amount(in wei) that is sent with the transaction
  }

  function withdraw(uint256 amount, address payable destinationAddress) public {
    require(msg.sender == owner, "Only owner can withdraw from this contract."); // Check if the msg.sender is the current owner of the contract
    require(amount <= balance, "Insufficient funds"); // Check if there are enough amount of ether in the contract

    destinationAddress.transfer(amount); // Send ether to the destination address
    balance -= amount;
  }
}
