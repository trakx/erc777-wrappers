pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1MC10ERC
 */
contract l1mc10erc is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Top 10 Ethereum", "L1MC10ERC") {}
}
