pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1LEN
 */
contract l1len is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Lending", "L1LEN") {}
}
