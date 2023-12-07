
# Ether Receiver Smart Contract

## Overview

`SimpleEtherReceiver` is a basic Solidity smart contract designed to accept Ether and handle any unrecognized calls using a fallback function. The contract includes state variables to track the contract owner and the total received Ether. Additionally, it provides functions to check the contract's balance and logs Ether received through an event.

## Features
Fallback Function: The contract has a fallback function that automatically handles any unrecognized calls and accepts Ether transactions.

State Variables:
`owner`: The address of the contract owner, set during contract deployment.
`totalReceived`: Tracks the total amount of Ether received by the contract.

Constructor:
The constructor sets the `owner` variable to the address of the contract deployer.

Balance Inquiry:
The `getBalance` function allows users to check the current balance of the contract.

Event Logging:
The contract logs Ether received through the `EtherReceived` event, including the sender's address and the amount of Ether received.

Usage

1. After deploying the contract to the Eth blockchain.
2. Send Ether to the contract to trigger the fallback function.
3. The contract updates the state variables, logs the received Ether, and provides functions to check balances.


## License

This contract is released under the MIT License
