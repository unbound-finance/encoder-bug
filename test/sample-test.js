const { expect } = require("chai");

describe("BugTest", function () {
  it("testVariable value is same", async function () {
    const BugTest = await ethers.getContractFactory("BugTest");
    const bugTest = await BugTest.deploy();

    const testVariableBefore = await bugTest.testVariable();

    await bugTest.changeTicks([
      [100, 100],
      [100, 100],
    ]);

    const testVariableAfter = await bugTest.testVariable();

    expect(testVariableBefore.toString()).to.equal(
      testVariableAfter.toString()
    );
  });
});
