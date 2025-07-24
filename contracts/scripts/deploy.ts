import { ethers } from "hardhat";

async function main() {
  const TaskFactory = await ethers.getContractFactory("TaskFactory");
  const contract = await TaskFactory.deploy();
  await contract.waitForDeployment();
  console.log("TaskFactory deployed to:", await contract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
