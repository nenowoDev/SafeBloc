async function main() {
    // Get the deployer's account
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    // Deploy the PublicLayer contract
    try {
        const PublicLayer = await ethers.getContractFactory("PublicLayer");
        const publicLayer = await PublicLayer.deploy();
        console.log("PublicLayer contract deployed to:", publicLayer.address);
    } catch (error) {
        console.error("Error deploying PublicLayer contract:", error);
    }

    // Deploy the PrivateLayer contract
    try {
        const PrivateLayer = await ethers.getContractFactory("PrivateLayer");
        const privateLayer = await PrivateLayer.deploy();
        console.log("PrivateLayer contract deployed to:", privateLayer.address);
    } catch (error) {
        console.error("Error deploying PrivateLayer contract:", error);
    }
}

// Run the main deployment function
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error("Deployment failed:", error);
        process.exit(1);
    });
