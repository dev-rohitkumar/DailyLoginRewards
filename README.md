# Daily Login Rewards Smart Contract

## Overview
The **DailyLoginRewards** smart contract is a simple Solidity contract that rewards users with tokens for logging in daily. Users can claim a fixed amount of tokens once every 24 hours, ensuring fair distribution of rewards.

## Features
- Tracks the last claimed time for each user
- Rewards users with a fixed amount of tokens upon successful claim
- Enforces a 24-hour claim interval

## Contract Details
- **Language:** Solidity
- **Compiler Version:** 0.8.0+
- **No External Imports or Constructors**
- **Contract Address:** _(0xaB322fEaCf994c1df396B7C0Ddba791b401B2e26)_

## Functions
### `claimReward()`
Allows a user to claim their daily reward if at least 24 hours have passed since their last claim.

#### Conditions:
- The function can only be called once per day per user.
- Rewards are stored in the `balances` mapping.
- The `lastClaimed` mapping tracks each user's last claim timestamp.

## Deployment & Usage
1. Deploy the contract on a compatible Ethereum Virtual Machine (EVM) blockchain.
2. Update the contract address in this README after deployment.
3. Users can call `claimReward()` daily to receive their tokens.
4. Check reward balance using `balances[userAddress]`.

## License
This project is open-source and available under the MIT License.

