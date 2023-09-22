// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract EnumTest{

    enum Status {



        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancled
    }

    Status public Status1;

    function get() public view returns(Status){
        return Status1;
    }

        function set(Status _status) public {
            Status1 = _status;
        }
        function cancel() public {
            Status1 = Status.Cancled;
        }
        function reset() public{
            delete Status1;
        }
}