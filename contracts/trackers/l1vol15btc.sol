pragma solidity ^0.5.0;

import "../SupervisedERC777Token.sol";


/**
 * @title L1VOL15BTC
 */
contract l1vol15btc is SupervisedERC777Token {
    constructor () public SupervisedERC777Token("Bitcoin Control15", "L1VOL15BTC") {}
}
