// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {LibString} from "solady/utils/LibString.sol";

contract TokenBase is ERC20 {
    // we need to know the tokenId to be able to emit the events on the 403 contract
    uint256 public immutable tokenId; // TODO can be remove it?
    // owner is the 403 contract
    address private immutable _owner;

    constructor(address __owner, uint256 _tokenId) ERC20("Token", "TKN", 18) {
        tokenId = _tokenId;
        _owner = __owner;
        string memory idStr = LibString.toString(_tokenId);
        name = string.concat("Token ERC403, id ", idStr);
        symbol = string.concat("ERC403-", idStr);
    }

    function erc1155Transfer(address from, address to, uint256 amount) public {
        require(msg.sender == _owner, "!owner");

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == _owner, "!owner");
        _mint(to, amount);
    }
}
