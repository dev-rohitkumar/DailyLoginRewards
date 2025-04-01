pragma solidity ^0.8.0;

contract DailyLoginRewards {
    mapping(address => uint256) public lastClaimed;
    mapping(address => uint256) public balances;
    uint256 public rewardAmount = 10;
    uint256 public claimInterval = 1 days;

    function claimReward() public {
        require(block.timestamp >= lastClaimed[msg.sender] + claimInterval, "Claim interval not reached");
        
        lastClaimed[msg.sender] = block.timestamp;
        balances[msg.sender] += rewardAmount;
    }
}
