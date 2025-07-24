# 📜 Smart Contract Specification – ConcordiaHub

## 🎯 Objective
This document describes the architecture and logic of the core smart contracts powering ConcordiaHub – a DApp deployed on EVM-compatible testnet networks.

---

## 🔐 Core Contracts
- **TaskFactory Contract**: Creates and stores task metadata, locks token rewards.
- **ReviewManager Contract**: Accepts, stores, and scores reviews. Handles feedback and token distribution.
- **KarmaManager Contract**: Tracks on-chain reputation points.
- **CORDToken Contract**: An ERC-20 token with faucet and staking functionality.

---

## ⚙️ Smart Contract Methods

### TaskFactory
```solidity
function createTask(string calldata title, string calldata description, TaskType taskType, uint256 tokenReward, uint256 karmaReward, uint256 maxReviewers) external;
function cancelTask(uint256 taskId) external;
function getTask(uint256 taskId) view external returns (Task memory);
