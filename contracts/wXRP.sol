pragma solidity ^0.5.0;

import "./ERC777Token.sol";
import "./ERC777Sender.sol";
import "./ERC777Recipient.sol";

contract TrakxWrappedXRP is ERC777Token {

    constructor() public ERC777Token(
        "Trakx Wrapped XRP",
        "wXRP") {}
}