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

    string public message = "You have successfully bought a Ticket";
    uint256 public totalTicketsSold;

    modifier CheckAge(uint256 _age) {
        require(_age >= 18, "Not up to age");
        _;
    }

    Ticket[] public tickets;

    constructor(uint256 _ticketPrice, string memory _name, uint256 _age) {
        tickets.push(
            Ticket({
                activeTicket: true,
                ticketPrice: _ticketPrice,
                startTime: block.timestamp,
                endTime: block.timestamp + 7 days,
                totalAmount: 0,
                age: _age,
                name: _name
            })
        );
        totalTicketsSold = 0;
    }

    function buyTicket() public payable CheckAge(tickets[totalTicketsSold].age) {
        require(msg.value >= tickets[totalTicketsSold].ticketPrice, "Insufficient funds");
        require(tickets[totalTicketsSold].activeTicket, "Tickets are sold out");
        tickets[totalTicketsSold].totalAmount += msg.value;
        totalTicketsSold++;
    }

    function getAmount() public view returns (uint256) {
        return tickets[totalTicketsSold - 1].totalAmount;
    }
}
