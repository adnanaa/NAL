require("@nomicfoundation/hardhat-ethers");
require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: {
    version: "0.8.24",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  networks: {
    base: {
      url: "https://mainnet.base.org",  // RPC ufficiale di Base Mainnet
      accounts: [`${process.env.PRIVATE_KEY}`], // La tua chiave privata
    },
  },
};
