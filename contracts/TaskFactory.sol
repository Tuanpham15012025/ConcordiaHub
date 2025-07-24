// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract TaskFactory {
    enum TaskType { Code, Design, Content }

    struct Task {
        address creator;
        string title;
        string description;
        TaskType taskType;
        uint256 tokenReward;
        uint256 karmaReward;
        uint256 maxReviewers;
    }

    Task[] public tasks;

    event TaskCreated(uint256 taskId, address indexed creator);

    function createTask(
        string memory _title,
        string memory _description,
        TaskType _taskType,
        uint256 _tokenReward,
        uint256 _karmaReward,
        uint256 _maxReviewers
    ) public {
        tasks.push(Task({
            creator: msg.sender,
            title: _title,
            description: _description,
            taskType: _taskType,
            tokenReward: _tokenReward,
            karmaReward: _karmaReward,
            maxReviewers: _maxReviewers
        }));

        emit TaskCreated(tasks.length - 1, msg.sender);
    }

    function getTaskCount() external view returns (uint256) {
        return tasks.length;
    }
}
