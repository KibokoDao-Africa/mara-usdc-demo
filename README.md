# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
git clone https://github.com/KibokoDao-Africa/mara-usdc-demo
cd mara-usdc-demo
npm install
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat compile
npx hardhat run scripts/deploy.js
```
remember to create an env file with PRIVATE_KEY and  CONTRACT_ADDRESS
to run the contract on mara testnet use the command
``` npx hardhat run scripts/deploy.js --network maratestnet```

the mara explorer can be found on https://testnet.mara.xyz/

