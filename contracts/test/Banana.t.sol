// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

import {Banana} from "../src/Banana.sol";
import {TokenBase} from "../src/bananaTokens/TokenBase.sol";

contract BananaTest is Test {
    Banana banana;

    address owner = address(0xFF);
    address user = 0x889558Ea3C7b58b544EB17a6Fc04044547837a77;

    function setUp() public {
        vm.startPrank(owner);
        banana = new Banana(2);

        banana.addToken(new TokenBase(address(banana), 0), 0);
        banana.addToken(new TokenBase(address(banana), 1), 1);
        banana.addToken(new TokenBase(address(banana), 2), 2);
        banana.addToken(new TokenBase(address(banana), 3), 3);
        banana.addToken(new TokenBase(address(banana), 4), 4);

        vm.stopPrank();
    }

    function test_constructor() public view {
        assertEq(banana.owner(), owner);
    }

    function test_mintBatch_four_ids_1() public {
        uint256[] memory nonces = new uint256[](1);

        nonces[0] = 63894049621281;
        vm.prank(user);
        banana.mintBatch(
            user,
            nonces
        );

        assertEq(banana.balanceOf(user, 0), 1);
        assertEq(banana.balanceOf(user, 1), 0);
        assertEq(banana.balanceOf(user, 2), 0);
        assertEq(banana.balanceOf(user, 3), 0);
        assertEq(banana.balanceOf(user, 4), 0);
    }
}
