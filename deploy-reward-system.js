const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const tokenAddress = "0x8c0D0588BBd8e0591B2ab35b0313E6669f06B50F"; // Indirizzo del token NAL già deployato
  const RewardSystem = await ethers.getContractFactory("RewardSystem");
  const rewardSystem = await RewardSystem.deploy(tokenAddress, deployer.address);

  // Aspetta il deploy
  await rewardSystem.waitForDeployment();

  console.log("RewardSystem contract deployed to:", await rewardSystem.getAddress());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
