#!/usr/bin/env bash

# Deploy contracts
truffle migrate --reset --network rinkeby

# Verify Contracts on Etherscan
truffle run verify DaiToken --network rinkeby --license SPDX-License-Identifier
truffle run verify DappToken --network rinkeby --license SPDX-License-Identifier
truffle run verify TokenFarm --network rinkeby --license SPDX-License-Identifier


# Flatten Contracts
/home/marquisogre/.nvm/versions/node/v12.18.3/bin/truffle-flattener src/contracts/DaiToken.sol > src/flats/DaiToken_flat.sol
/home/marquisogre/.nvm/versions/node/v12.18.3/bin/truffle-flattener src/contracts/DappToken.sol > src/flats/DappToken_flat.sol
/home/marquisogre/.nvm/versions/node/v12.18.3/bin/truffle-flattener src/contracts/TokenFarm.sol > src/flats/TokenFarm_flat.sol



