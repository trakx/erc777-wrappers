pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1MC10DEFI
 */
contract l1mc10defi is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Top 10 DeFi", "L1MC10DEFI") {}
}
