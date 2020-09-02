pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1DEX
 */
contract l1dex is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Decentralised Exchanges", "L1DEX") {}
}
