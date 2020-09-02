pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title wXRP
 */
contract WrappedXRP is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Trakx Wrapped XRP", "wXRP") {}
}
