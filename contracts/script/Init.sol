// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Banana} from "../src/Banana.sol";

contract Init is Script {
    function run() public {
        vm.startBroadcast();
        Banana banana = Banana(0x4C21515b92F488A02AC44d8FE2878e00E270A42a);

        banana.addToken(0xB82A4C77a57A08109D9EC0f338a944f1D4f7229B, 0);
        banana.addToken(0x4f818C1e8ed8852eD5c84D4198b5E2659008586a, 1);
        banana.addToken(0xC54Ae1172a7E671002C3bf73c8D75e54C9D2EFFe, 2);
        banana.addToken(0x3Ec5C0A31D779cdEd116741bc3E0f2713E39CA14, 3);
        banana.addToken(0x4C743c69E88F146d4dd434cB662024C86c2F0997, 4);

        banana.setMinZeros(4);

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