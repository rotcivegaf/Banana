// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Banana} from "../src/Banana.sol";
import {BananaVoting} from "../src/bananaTokens/BananaVoting.sol";
import {BananaFeeOnTransfer} from "../src/bananaTokens/BananaFeeOnTransfer.sol";

contract Init is Script {
    function run() public {
        vm.startBroadcast();
        Banana banana = new Banana(4);
        console.log(address(banana));

        banana.addToken(address(new BananaVoting(address(banana))), 0);
        banana.addToken(address(new BananaFeeOnTransfer(address(banana), msg.sender)), 1);
        banana.addToken(address(new BananaFeeOnTransfer(address(banana), msg.sender)), 2);
        banana.addToken(address(new BananaFeeOnTransfer(address(banana), msg.sender)), 3);
        banana.addToken(address(new BananaFeeOnTransfer(address(banana), msg.sender)), 4);

        vm.stopBroadcast();
    }
}
/*
forge script \
  script/Init.sol:Init \
  --rpc-url https://api.avax-test.network/ext/bc/C/rpc \
  --private-key  \
  --interactives 1 \
  -vvv \
  --broadcast
  */