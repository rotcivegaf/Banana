// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "forge-std/Script.sol";
import {Banana} from "../src/Banana.sol";
import {BananaVoting} from "../src/bananaTokens/BananaVoting.sol";
import {BananaFeeOnTransfer} from "../src/bananaTokens/BananaFeeOnTransfer.sol";

contract Deploy is Script {
    function run() public {
        vm.startBroadcast();
        Banana banana = new Banana(6);
        address _banana = address(banana);

        address token0 = address(new BananaVoting(_banana));
        banana.addToken(token0, 0);
        address token1 = address(new BananaFeeOnTransfer(_banana, msg.sender));
        banana.addToken(token1, 1);
        address token2 = address(new BananaFeeOnTransfer(_banana, msg.sender));
        banana.addToken(token2, 2);
        address token3 = address(new BananaFeeOnTransfer(_banana, msg.sender));
        banana.addToken(token3, 3);
        address token4 = address(new BananaFeeOnTransfer(_banana, msg.sender));
        banana.addToken(token4, 4);

        console.log("banana:", _banana);
        console.log("token0:", token0);
        console.log("token1:", token1);
        console.log("token2:", token2);
        console.log("token3:", token3);
        console.log("token4:", token4);

        vm.stopBroadcast();
    }
}
