const hre = require("hardhat");

const { Contract } = require("hardhat/internal/hardhat-network/stack-traces/model");
const contractAddress =process.env.CONTRACT_ADDRESS
const contractName ="Mara";
async function main(){

    const call =  await hre.ethers.getContractAt(contractName,contractAddress);

    const tx =  await call.addCount( 10);
    

    const receipt = await tx.wait();

    const addmember =await call.creatMember(10,"mii");
    
    const addStudent = await  call.createStudent(12,"kibokodao","0xFf897981d299e1668C9B0CfbE693A93549d92c26")


    const  Count = await call.getCount;
    console.log(addmember);
    console.log(Count);
 
    console.log(receipt);

     console.log(addStudent);



}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });