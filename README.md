# RewardSystem Smart Contract

This project contains the **RewardSystem** smart contract, designed to distribute rewards in **NAL Token** to users based on their contributions.

## Features

- **ERC20 Token Support**: The contract integrates with the **NAL Token**, an ERC20 token that serves as the reward mechanism.
- **Contribution Tracking**: Tracks user contributions and calculates rewards accordingly.
- **Owner-Only Functions**: Only the contract owner can register contributions, adjust rewards, or manage the contract.

## Smart Contract Overview

### RewardSystem.sol

The main smart contract in this project is `RewardSystem`. The key features include:

- **Constructor**: Initializes the contract with the NAL Token address and assigns an initial owner.
- **Register Contribution**: Allows the owner to record a user's contribution and distribute NAL Tokens as rewards.
- **Adjust Reward**: Allows the owner to modify the reward amount for specific users.
- **Get User Contribution**: A public function to retrieve the total contributions of a specific user.

## Getting Started

To get started with the project, follow these steps.

### Prerequisites

- **Node.js** (>= 12.x)
- **Hardhat**: You can install Hardhat globally with the following command:

```bash
npm install --save-dev hardhat


Installation

    Clone the repository:git clone <repository-url>
cd nal-token-project

    Install the necessary dependencies:npm install
Set up your .env file with the following variables:PRIVATE_KEY=<your-private-key>
BASE_API_URL=https://base-goerli.infura.io/v3/<your-infura-project-id>
Compile the smart contract:to deploy the RewardSystem contract on the Base network, use the following command:npx hardhat run scripts/deploy-reward-system.js --network base

Verifying the Contract

To verify the contract on BaseScan, follow these steps:

    Go to BaseScan Verification Page.
    Select the appropriate compiler version: v0.8.24.
    Ensure that all import paths are correct and upload the flattened version of the contract.

Project Structure

    contracts/: Contains the Solidity contracts, including RewardSystem.sol.
    scripts/: Deployment scripts for Hardhat.
    .env: Environment variables such as private keys and API URLs (make sure to keep this file secret and never upload it to GitHub).

License

This project is licensed under the MIT License.