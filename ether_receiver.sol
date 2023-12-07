// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ether_receiver {
    
    address public owner;
    uint public totalReceived;

    
    constructor() {
        owner = msg.sender;
    }

    // creating a fallback function to handle unrecognized calls and accept Ether
    receive() external payable {
   
        totalReceived += msg.value;

        emit EtherReceived(msg.sender, msg.value);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    event EtherReceived(address indexed sender, uint256 value);
}
