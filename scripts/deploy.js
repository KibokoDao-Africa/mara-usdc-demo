const hre = require("hardhat");

async function main() {
 

  const mara= await hre.ethers.deployContract("Mara");

  await mara.waitForDeployment();

  console.log(
    ` deployed to ${mara.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});