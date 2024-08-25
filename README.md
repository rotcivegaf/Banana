# Banana Idle Miner

Welcome to Banana Idle Miner, an innovative idle mining game that combines the engaging elements of idle games with the revolutionary potential of blockchain technology. In this game, players use their PC's processing power to mine unique and rare Bananas, each represented as ERC-1155 NFTs, and each ERC-1155 ID is a custom ERC20

We have created a new ERC, the ERC403, which makes it possible for each ERC1155 id to be an ERC20.

The ERC1155 ID `0` is the voting contract, with which the future of the project can be decided, the community can choose:
- Create new banana ERC20 tokens 
- Choose its icon
- The type of ERC20 (fee on transfer, rebasing, burning, auto liquidity, etc)
- Choose and change mining difficulty
- Etc.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Types of Banana](#types-of-Banana)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Banana Idle Miner is designed to provide a unique gaming experience where players can earn digital assets through mining. The rarity of the Banana is determined by the complexity of the hashes found during the mining process, creating a fair and engaging reward system.

## Features

- Blockchain Integration: Utilizes Ethereum blockchain to mint and manage ERC-1155 NFTs.
- Idle Mining: Players use their computing power to mine Banana, with rarity based on hash complexity.
- Variety of Banana: Includes Normal, Steel, Golden, Crystal and Mystic.
- Decentralized Marketplace: Trade your Banana on platforms like OpenSea.
- Each ERC-1155 ID is a custom ERC20

## Installation

To run Banana Idle Miner locally, follow these steps:

Clone the Repository:
```bash
git clone git@github.com:rotcivegaf/Banana.git
cd Banana/
```

yarn install
yarn dev
go to `http://localhost:5173/`
connect your wallet


## Code

- Contract: [Banana.sol](https://github.com/rotcivegaf/Banana/blob/master/contracts/src/Banana.sol)
- Contract: [Banana.sol](https://github.com/rotcivegaf/Banana/blob/master/contracts/src/Banana.sol)
- Contract: [Banana.sol](https://github.com/rotcivegaf/Banana/blob/master/contracts/src/Banana.sol)
- Miner: [rust-banana-miner](https://github.com/rotcivegaf/Banana/tree/master/front/rust-banana-miner)


## Deployments

### Avalanche(AVAX)

- Banana.sol: [0x4C21515b92F488A02AC44d8FE2878e00E270A42a](https://subnets-test.avax.network/c-chain/address/0x4C21515b92F488A02AC44d8FE2878e00E270A42a)
    - Transaction `mintBatch`: [0xdde7e66bb5985aba1bc361eb74a43a9458a04999db823085451fe72c926fe544](https://testnet.snowtrace.io/tx/0xdde7e66bb5985aba1bc361eb74a43a9458a04999db823085451fe72c926fe544?chainid=43113)
    - Transaction `mintBatch`: [0x64ec0716162120b8780d00e95a813c2607707f36bb784b228638f3964a8b6681](https://testnet.snowtrace.io/tx/0x64ec0716162120b8780d00e95a813c2607707f36bb784b228638f3964a8b6681?chainid=43113)
- BananaVoting.sol: [0xB82A4C77a57A08109D9EC0f338a944f1D4f7229B](https://subnets-test.avax.network/c-chain/address/0xB82A4C77a57A08109D9EC0f338a944f1D4f7229B)
- BananaFeeOnTransfer.sol[1]: [0x4f818C1e8ed8852eD5c84D4198b5E2659008586a](https://subnets-test.avax.network/c-chain/address/0x4f818C1e8ed8852eD5c84D4198b5E2659008586a)
- BananaFeeOnTransfer.sol[2]: [0xC54Ae1172a7E671002C3bf73c8D75e54C9D2EFFe](https://subnets-test.avax.network/c-chain/address/0xC54Ae1172a7E671002C3bf73c8D75e54C9D2EFFe)
- BananaFeeOnTransfer.sol[3]: [0x3Ec5C0A31D779cdEd116741bc3E0f2713E39CA14](https://subnets-test.avax.network/c-chain/address/0x3Ec5C0A31D779cdEd116741bc3E0f2713E39CA14)
- BananaFeeOnTransfer.sol[4]: [0x4C743c69E88F146d4dd434cB662024C86c2F0997](https://subnets-test.avax.network/c-chain/address/0x4C743c69E88F146d4dd434cB662024C86c2F0997)


### Polygon ZkEvm Cardona

- Banana.sol: [0x0702224dc991BD1adBecAA291188f200319E28bA](https://cardona-zkevm.polygonscan.com/address/0x0702224dc991bd1adbecaa291188f200319e28ba#code)
    - Transaction `mintBatch`: [0x439173bf93c195486fa0ada4339f00c3fe65702661f53e8515753320eefc9974](https://cardona-zkevm.polygonscan.com/tx/0x439173bf93c195486fa0ada4339f00c3fe65702661f53e8515753320eefc9974)
    - Transaction `mintBatch`: [0x01bf09303b41fbe8bcd2d133c0c11ebe0243f8e08b91465e2a6815245e89a1ab](https://cardona-zkevm.polygonscan.com/tx/0x01bf09303b41fbe8bcd2d133c0c11ebe0243f8e08b91465e2a6815245e89a1ab)
- BananaVoting.sol: [0xb82a4c77a57a08109d9ec0f338a944f1d4f7229b](https://cardona-zkevm.polygonscan.com/address/0xb82a4c77a57a08109d9ec0f338a944f1d4f7229b#code)
- BananaFeeOnTransfer.sol[1]: [0xc54ae1172a7e671002c3bf73c8d75e54c9d2effe](https://cardona-zkevm.polygonscan.com/address/0xc54ae1172a7e671002c3bf73c8d75e54c9d2effe#code)
- BananaFeeOnTransfer.sol[2]: [0x3ec5c0a31d779cded116741bc3e0f2713e39ca14](https://cardona-zkevm.polygonscan.com/address/0x3ec5c0a31d779cded116741bc3e0f2713e39ca14#code)
- BananaFeeOnTransfer.sol[3]: [0x4c743c69e88f146d4dd434cb662024c86c2f0997](https://cardona-zkevm.polygonscan.com/address/0x4c743c69e88f146d4dd434cb662024c86c2f0997#code)
- BananaFeeOnTransfer.sol[4]: [0xad43abaed15e41176f666df2935f1249560e4456](https://cardona-zkevm.polygonscan.com/address/0xad43abaed15e41176f666df2935f1249560e4456#code)


### Arbitrum Sepolia

- Banana.sol: [0x617f1025F1e41Df21d02b35a2DbbA1a0725420ED](https://sepolia.arbiscan.io/address/0x617f1025F1e41Df21d02b35a2DbbA1a0725420ED#code)
    - Transaction `mintBatch`: [0x2597e4ad78f291f6b0eee9cde09cb5f87a882598c597221acab4690cb87cec3a](https://sepolia.arbiscan.io/tx/0x2597e4ad78f291f6b0eee9cde09cb5f87a882598c597221acab4690cb87cec3a)
    - Transaction `mintBatch`: [0xce4149fad729639c62577c141946c3789fc3d20019f864259ea1f813ec5a0bf7](https://sepolia.arbiscan.io/tx/0xce4149fad729639c62577c141946c3789fc3d20019f864259ea1f813ec5a0bf7)
- BananaVoting.sol: [0x9d8d5ddc5596e821816c0f31c7a1dd2ef1c1c5aa](https://sepolia.arbiscan.io/address/0x9d8d5ddc5596e821816c0f31c7a1dd2ef1c1c5aa#code)
- BananaFeeOnTransfer.sol[1]: [0x18fccdec6584f1f39201f62c00ee6299ed8433e2](https://sepolia.arbiscan.io/address/0x18fccdec6584f1f39201f62c00ee6299ed8433e2#code)
- BananaFeeOnTransfer.sol[2]: [0x433cdcf08f8ad1652cdea5b719d98f365b14355c](https://sepolia.arbiscan.io/address/0x433cdcf08f8ad1652cdea5b719d98f365b14355c#code)
- BananaFeeOnTransfer.sol[3]: [0xc20f09af14e1361d1ca1660eb498093f8a2658e2](https://sepolia.arbiscan.io/address/0xc20f09af14e1361d1ca1660eb498093f8a2658e2#code)
- BananaFeeOnTransfer.sol[4]: [0x97083d15dfbb424c0b7c26bd011cc908d3845700](https://sepolia.arbiscan.io/address/0x97083d15dfbb424c0b7c26bd011cc908d3845700#code)


## Usage
-----

1.  **Start Mining**:
    - This demo currently runs using Rust. You can start the mining process clicking in `Start Mining` button
    -   Adjust the number of cores used for mining in the "Cores" section.
2.  **Claim Your Banana**:
    -   Once you have mined enough, click the "Claim!" button to mint your Banana as ERC-1155 NFTs.
3.  **Check Inventory**:
    -   View your mined Banana in the Banana Contract.

Types of Banana
-------------

-   **Normal Banana**: A plain, smooth white Banana.
-   **Steel Banana**: A shiny, metallic Banana with a platinum-like appearance.
-   **Golden Banana**: A golden Banana with a glowing aura.
-   **Crystal Banana**: A transparent Banana with multicolored reflections.
-   **Mystic Banana**: An Banana covered in ancient runes, emitting a faint purple glow.


------------

- [Front] Inventory page
- Create independent minters for each erc20, for each erc115 id a different minter could be configured.
- Each erc115 id would have an id based on the token, allowing it to have the same id in all chains and to be bridged from one chain to another.
- Add a zk paymaster to be able to subsidize transactions

Contributing
------------

We welcome contributions from the community! Please follow these steps to contribute:

1.  **Fork the Repository**: Click the "Fork" button on the top right corner of this repository page.
2.  **Create a Branch**: Create your feature branch (`git checkout -b feature/AmazingFeature`).
3.  **Commit Your Changes**: Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4.  **Push to the Branch**: Push to the branch (`git push origin feature/AmazingFeature`).
5.  **Open a Pull Request**: Open a pull request to the `main` branch.

License
-------

This project is licensed under the MIT License.