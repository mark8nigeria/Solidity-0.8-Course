// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;



contract Payabled {



    address payable public owner;


    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function notPayable() public {}

    //Function to withdraw Ether

    function withdraw() public {

        uint amount = address(this).balance;

        (bool success,) = owner.call{value : amount}(" ");
        require(success, "Failed to send Ether");
    }

    //function to transfer ether from this contract to address fro input

    function transfer(address payable _to, uint _amount) public {

        (bool success, ) = _to.call{value : _amount}("");
        require(success, "Failed to send ether");

    }
} 