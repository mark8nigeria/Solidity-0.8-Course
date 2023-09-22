// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.7;

contract EventTicket {


    uint256 public numberOfTIcket;
    uint256 public ticketPrice;
    uint256 public startTime;
    uint256 public endTime;
    uint256 public totalAmount;
    uint256 public timestamp;
    string public message = "Your Ticket IS ";

    constructor(uint256 _ticketPrice){
        ticketPrice = _ticketPrice;
        startTime = block.timestamp;
        endTime = block.timestamp + 7 days;
        timestamp = (endTime - startTime) / 60/ 60 / 24;

    }
    function buyTicket(uint256 _value)public returns(uint256 ticketId){
        numberOfTIcket++;
        totalAmount += _value;
        ticketId = numberOfTIcket;
       
            assert(ticketPrice == 5);
        
    }
function getAmount() public view returns(uint256){
return totalAmount;
}

}