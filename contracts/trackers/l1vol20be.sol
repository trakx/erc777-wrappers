pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1VOL20BE
 */
contract l1vol20be is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Bitcoin Ether Control20", "L1VOL20BE") {}
}
