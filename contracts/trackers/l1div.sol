pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1DIV
 */
contract l1div is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Diversifier", "L1DIV") {}
}
