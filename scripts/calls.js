const hre = require("hardhat");

const { Contract } = require("hardhat/internal/hardhat-network/stack-traces/model");
const contractAddress =process.env.CONTRACT_ADDRESS
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