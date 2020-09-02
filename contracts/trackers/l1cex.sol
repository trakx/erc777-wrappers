pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1CEX
 */
contract l1cex is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Centralised Exchanges", "L1CEX") {}
}
