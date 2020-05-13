pragma solidity ^0.5.0;

import "./SupervisedERC777Token.sol";


/**
 * @title Simple777Token
 * @dev Example of instantiation of the SupervisedERC777Token
 */
contract WrappedADA is SupervisedERC777Token {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public SupervisedERC777Token("Trakx Wrapped ADA", "wADA") {}
}
