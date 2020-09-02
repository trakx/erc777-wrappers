pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title wADA
 */
contract WrappedADA is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Trakx Wrapped ADA", "wADA") {}
}
