const hre = require("hardhat");

const { Contract } = require("hardhat/internal/hardhat-network/stack-traces/model");
const contractAddress ="0x5FbDB2315678afecb367f032d93F642f64180aa3";
const contractName ="Mara";
async function main(){

    const call =  await hre.ethers.getContractAt(contractName,contractAddress);

    const tx =  await call.addCount( 10);
    

    const receipt = await tx.wait();
    const addmember =await call.creatMember(10,"mii");


    const  Count = await call.getCount;
    console.log(addmember);
    console.log(Count);

    console.log(receipt);




}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });