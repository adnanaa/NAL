// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RewardSystem is Ownable {
    ERC20 public nalToken;  // Riferimento al token NAL

    mapping(address => uint256) public contributions;  // Traccia i contributi degli utenti

    // Passiamo esplicitamente l'indirizzo del deployer come initialOwner
    constructor(ERC20 _nalToken, address initialOwner) Ownable(initialOwner) {
        nalToken = _nalToken;
    }

    // Funzione per registrare un contributo e distribuire ricompense
    function registerContribution(address user, uint256 amount) external onlyOwner {
        // Aumenta i contributi dell'utente
        contributions[user] += amount;

        // Distribuisci ricompense (ad esempio, 10 NAL per contributo)
        uint256 rewardAmount = 10 * 10**18;  // 10 NAL in wei
        nalToken.transfer(user, rewardAmount);
    }

    // Funzione per regolare le ricompense per ogni contributo
    function adjustReward(address user, uint256 newReward) external onlyOwner {
        contributions[user] = newReward;
    }

    // Funzione per vedere i contributi totali di un utente
    function getUserContribution(address user) external view returns (uint256) {
        return contributions[user];
    }
}
