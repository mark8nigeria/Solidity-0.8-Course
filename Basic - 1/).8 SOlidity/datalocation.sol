// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLocatoin{




    struct MyStruct {
        uint foo;
        string text;

    }

    mapping(address => MyStruct) public myStruct;

    function example(uint[] memory y, string memory s) external returns (uint[] memory) {
        myStruct(msg.sender) = MyStruct({foo: 123, text:"bar"});

        MyStruct storage myStructs = mystruct(msg.sender);
        mystruct.text ="foo";

        MyStruct memory readOnly = mystructs(msg.sender);
        readOnly.foo = 456;

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;



    }

}