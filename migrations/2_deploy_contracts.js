const l1btc15gol = artifacts.require("l1btc15gol");
const l1btceth = artifacts.require("l1btceth");
const l1cex = artifacts.require("l1cex");
const l1dex = artifacts.require("l1dex");
const l1div = artifacts.require("l1div");
const l1len = artifacts.require("l1len");
const l1mc10defi = artifacts.require("l1mc10defi");
const l1mc10erc = artifacts.require("l1mc10erc");
const l1vol15btc = artifacts.require("l1vol15btc");
const l1vol20be = artifacts.require("l1vol20be");

const contractsToDeploy = [
  l1btc15gol,
  l1btceth,
  l1cex,
  l1dex,
  l1div,
  l1len,
  l1mc10defi,
  l1mc10erc,
  l1vol15btc,
  l1vol20be,
]

require('@openzeppelin/test-helpers/configure')({ provider: web3.currentProvider, environment: 'truffle' });

const { singletons } = require('@openzeppelin/test-helpers');


module.exports = async function(deployer, network, accounts) {
  if (network === 'development') {
    // In a test environment an ERC777 token requires deploying an ERC1820 registry
    await singletons.ERC1820Registry(accounts[0]);
  }

  async function asyncForEach(array, callback) {
    for (let index = 0; index < array.length; index++) {
      await callback(array[index], index, array);
    }
  }

  await asyncForEach(contractsToDeploy, async contract => {
    await deployer.deploy(contract);
    const token = await contract.deployed();
    console.log(`\t> deployed at:         ${token.address}`)
  });
  
};
