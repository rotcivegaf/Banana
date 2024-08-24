// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {BananaBase} from "./BananaBase.sol";


contract BananaVoting is BananaBase {
    constructor(
        address _owner
    ) BananaBase("BananaGovernance", "BNNGOV", 18, _owner) {}




    /*
    // The functions below are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._burn(account, amount);
    }*/
}