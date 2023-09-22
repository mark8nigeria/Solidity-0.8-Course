pragma solidity ^0.8.7;

contract Mod {

    uint256 public favour = 44;
    bool public locked; 
    address public owner;


    modifier Pause {
        require(favour <= 33, "Check your code");
        _;
    }
    function Inc() public  Pause returns(int256) {
        favour += 1;
    }
}