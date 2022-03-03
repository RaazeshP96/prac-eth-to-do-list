
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Todolist{
    uint public taskCount=0;
    struct Task{
        uint id;
        string content;
        bool completed;
    }
    mapping(uint => Task) public task;
    constructor() {
        createTask("DO CODING");
    }
    function createTask(string memory _content)public{
        taskCount ++;
        task[taskCount]=Task(taskCount,_content,false);
    }
}