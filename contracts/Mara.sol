// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Mara  {
    uint public count;
    address public owner;
    //declearing a varible

    event add(uint);

    //event for logs

    constructor() {
        owner = payable (msg.sender);
    }

    //struct

    struct Member {
        uint balance;
        string name;
    }

    struct Student{
        uint  id;
        string name;
        address addr;

    }

    Member[] public members;
    Student[] public students;
    mapping(uint => Student)   studentDetails;
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

    function createStudent(uint _id, string memory _name, address _addr) public{
        Student memory student;
        student.id = _id;
        student.name = _name;
        student.addr = _addr;

        students.push(student);
    }


    function getStudent(uint _id) public view returns(Student memory){
        return studentDetails[_id];
    }

     function deposit(address payable  _to)public payable{
        _to.transfer(msg.value);
     }


//function withdraw

function withdraw(uint256 amount) public onlyOwner returns (bool) {
        require(amount <= address(this).balance, "Insufficient contract balance");
        // owner.transfer(amount);
        return true;
    }

    // Additional functions...

    receive() external payable {
        // This function allows the contract to receive Ether.
    }
     
    
}