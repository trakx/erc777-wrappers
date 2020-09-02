pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1BTC15GOL
 */
contract l1btc15gol is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Digital Inflation Hedge", "L1BTC15GOL") {}
}
