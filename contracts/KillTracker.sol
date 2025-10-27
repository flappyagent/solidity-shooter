// contracts/KillTracker.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract KillTracker {
    mapping(address => uint256) public kills;
    event Kill(address player, uint256 total);

    function addKill() external {
        kills[msg.sender]++;
        emit Kill(msg.sender, kills[msg.sender]);
    }
}
