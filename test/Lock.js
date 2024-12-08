const { expect } = require("chai");

describe("Public Layer Contract", function () {
  it("Should register public info correctly", async function () {
    const [owner] = await ethers.getSigners();

    const PublicLayer = await ethers.getContractFactory("PublicLayer");
    const publicLayer = await PublicLayer.deploy();

    const name = "Alice";
    const birthDate = 1234567890; // Example timestamp
    const icNumber = "1234567890123456";

    await publicLayer.registerPublicInfo(owner.address, name, birthDate, icNumber);

    const publicInfo = await publicLayer.publicInfoRegistry(owner.address);
    expect(publicInfo.name).to.equal(name);
    expect(publicInfo.BDate).to.equal(birthDate);
  });
});

describe("Private Layer Contract", function () {
  it("Should register private info correctly", async function () {
    const [owner] = await ethers.getSigners();

    const PrivateLayer = await ethers.getContractFactory("PrivateLayer");
    const privateLayer = await PrivateLayer.deploy();

    const icNumber = "1234567890123456";
    const bankAcc = "9876543210";

    await privateLayer.registerPrivateInfo(owner.address, icNumber, bankAcc);

    const [retrievedIc, retrievedBank] = await privateLayer.getPrivateInfo(owner.address);
    expect(retrievedIc).to.equal(icNumber);
    expect(retrievedBank).to.equal(bankAcc);
  });
});
