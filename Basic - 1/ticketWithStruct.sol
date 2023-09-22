// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EventTicket {





    struct Ticket {
        bool activeTicket;
        uint256 ticketPrice;
        uint256 startTime;
        uint256 endTime;
        uint256 totalAmount;
        uint256 age;
        string name;

    }
    string public message = "You have succesfully bought a Ticket";

        modifier CheckAge {
            require(age >= 18, "Not up to age");
            _;
        }

    constructor(uint256 _ticketPrice,  string _name, uint256 _age) {
        
    
            _age = age;
            _name = name;
            _ticketPrice = ticketPrice;
           Ticket.startTime = block.timestamp;
           Ticket.endTime = block.timestamp + 7 days;
           
    }
            
    }
    function GetTicket(uint256 _ticketPrice) public  view  returns(uint256, string){
        Ticket.activeTicket++;
            assert(ticketPrice == 5);

    }
    function getAmount() public view returns(uint256) {
        return Ticket.totalAmount;
    }
    }