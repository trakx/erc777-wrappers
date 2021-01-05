const path = require("path");
require('chai/register-should');

const HDWalletProvider = require("truffle-hdwallet-provider");
const Web3 = require("web3");

require('dotenv').config()

const mnemonic = process.env.MNEMONIC

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,            // Standard Ethereum port (default: none)
      network_id: "5777",       // Any network (default: none)
     },

    rinkeby: {
      provider: () =>  new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/"+process.env.INFURA_API_KEY),
      network_id: 4,
      gas: 4612388 // Gas limit used for deploys
    },

    kovan: {
      provider: function(){
        return new HDWalletProvider(
          mnemonic, "https://kovan.infura.io/v3/"+process.env.INFURA_API_KEY
        )
      },
      gas: 5000000,
      //gasPrice: 25000000000,
      network_id: 42
    },

    mainnet: {
      provider: () =>  new HDWalletProvider(mnemonic, "https://mainnet.infura.io/v3/"+process.env.INFURA_API_KEY),
      network_id: 1,
      gas: 4612388, // Gas limit used for deploys
      //gasPrice: xxx
    }
  },
  compilers: {
    solc: {
      version: "0.5.5"
    }
  }
}
