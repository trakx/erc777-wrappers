pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title Kovan Test USDc
 */
contract kUSDc is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Trakx Kovan USDc", "kUSDc") {}
}
