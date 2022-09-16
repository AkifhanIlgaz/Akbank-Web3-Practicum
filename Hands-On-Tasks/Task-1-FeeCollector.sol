// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FeeCollector {
  address public owner;
  uint256 public balance;

  constructor() {
    owner = msg.sender;
  }

  receive() external payable {
    balance += msg.value;
  }

  function withdraw(uint256 amount, address payable destinationAddress) public {
    require(msg.sender == owner, "Only owner can withdraw from this contract.");
    require(amount <= balance, "Insufficient funds");

    destinationAddress.transfer(amount);
    balance -= amount;
  }
}
