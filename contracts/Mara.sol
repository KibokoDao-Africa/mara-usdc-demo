// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Mara {
    uint public count;
    address public owner;
    //declearing a varible

    event add(uint);

    //event for logs

    constructor() {
        owner = msg.sender;
    }

    //struct

    struct Member {
        uint balance;
        string name;
    }

    Member[] public members;

    //modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "admin only");
       
        {
            _;
        }
    }

    function addCount(uint _count) public onlyOwner {
        count = _count;

        emit add(_count);
    }

    function getCount() public view returns (uint) {
        return count;
    }

    function creatMember(uint _balance, string memory _name) public {
        Member memory member;
        member.balance = _balance;
        member.name = _name;

        members.push(member);
    }
}
