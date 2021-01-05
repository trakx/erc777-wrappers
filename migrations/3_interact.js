
const kUSDc = artifacts.require("kUSDc");

require('@openzeppelin/test-helpers/configure')({ provider: web3.currentProvider, environment: 'truffle' });

const { singletons } = require('@openzeppelin/test-helpers');


module.exports = async function(deployer, network, accounts) {
  
  const mintUserData = web3.utils.fromAscii("testing gift");
  const mintOperatorData = web3.utils.fromAscii("sent donation");
  const mintAmount = "0x" + (10000 * 10 ** 18).toString(16);

  const token = await kUSDc.deployed();
  console.log(`\t> deployed at:         ${token.address}`)
  await token.mint("0x55B1E5E9e6442892dD8B1c0c534235b187775d7a", mintAmount, mintUserData, mintOperatorData)//openware
  await token.mint("0x9DC57560Dc50cCFB7475B78B594B2444CFB7a1A5", mintAmount, mintUserData, mintOperatorData)//trakx
};
