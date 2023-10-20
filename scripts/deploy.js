const hre = require("hardhat");

async function main() {
    const UserInformation = await hre.ethers.getContractFactory("UserInformation");
    const userInformation = await UserInformation.deploy();

    await userInformation.deployed();

    console.log("UserInformation deployed to:", userInformation.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
