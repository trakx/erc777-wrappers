pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1BTCETH
 */
contract l1btceth is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Bitcoin Ether 50/50", "L1BTCETH") {}
}
