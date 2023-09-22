// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;






contract Payable {
    address payable public owner;


    constructor() payable {
        owner = payable(msg.sender);

    }

    function deposit() public payable {}

    function notPayable() public {}

    function withdraw() public  {
        uint amount =address(this).balance;
        
    }
}