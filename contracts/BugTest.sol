// SPDX-License-Identifier: MIT

pragma solidity >=0.7.6;
pragma abicoder v2;

import "hardhat/console.sol";

contract BugTest {
    uint256 public testVariable;

    struct TestStruct {
        uint256 amount0;
        uint256 amount1;
    }

    TestStruct[] public ticks;
    /**
     * @dev Replaces old ticks with new ticks
     * @param _ticks New ticks
     */
    function changeTicks(TestStruct[] memory _ticks) external {
        for (uint256 i = 0; i < _ticks.length; i++) {
            TestStruct storage testStruct;
            testStruct.amount0 = _ticks[i].amount0;
            testStruct.amount1 = _ticks[i].amount1;
            ticks.push(testStruct);
        }
    }
}
