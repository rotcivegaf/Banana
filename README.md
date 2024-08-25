# Banana Idle Miner

Welcome to Banana Idle Miner, an innovative idle mining game that combines the engaging elements of idle games with the revolutionary potential of blockchain technology. In this game, players use their PC's processing power to mine unique and rare Bananas, each represented as ERC-1155 NFTs.

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
- TODO: Variety of Banana: Includes Normal, Plate, Golden, Crystal, Mystic, Fiery, Galaxy, and Cyber Banana.
- Decentralized Marketplace: Trade your Banana on platforms like OpenSea.

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
- Miner example: [miner.js](TODO)

## Deployments

### Avalanche(AVAX)

- Banana.sol: [0x4C21515b92F488A02AC44d8FE2878e00E270A42a](https://subnets-test.avax.network/c-chain/address/0x4C21515b92F488A02AC44d8FE2878e00E270A42a)
- BananaVoting.sol: [0xB82A4C77a57A08109D9EC0f338a944f1D4f7229B](https://subnets-test.avax.network/c-chain/address/0xB82A4C77a57A08109D9EC0f338a944f1D4f7229B)
- BananaFeeOnTransfer.sol[1]: [0x4f818C1e8ed8852eD5c84D4198b5E2659008586a](https://subnets-test.avax.network/c-chain/address/0x4f818C1e8ed8852eD5c84D4198b5E2659008586a)
- BananaFeeOnTransfer.sol[2]: [0xC54Ae1172a7E671002C3bf73c8D75e54C9D2EFFe](https://subnets-test.avax.network/c-chain/address/0xC54Ae1172a7E671002C3bf73c8D75e54C9D2EFFe)
- BananaFeeOnTransfer.sol[3]: [0x3Ec5C0A31D779cdEd116741bc3E0f2713E39CA14](https://subnets-test.avax.network/c-chain/address/0x3Ec5C0A31D779cdEd116741bc3E0f2713E39CA14)
- BananaFeeOnTransfer.sol[4]: [0x4C743c69E88F146d4dd434cB662024C86c2F0997](https://subnets-test.avax.network/c-chain/address/0x4C743c69E88F146d4dd434cB662024C86c2F0997)

### [Polygon ZKEVM cardona](https://cardona-zkevm.polygonscan.com/)


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

TODO
------------

- [Front] Inventory page
- crear minters, por cada erc115 id se podria configurar un minter distinto
- cada erc115 id tendria una id en base al token, permitiendo que en todas las chains tenga el mismo id y que se pueda bridgear de una chain a otra
- zk paymaste
- avax chain?

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