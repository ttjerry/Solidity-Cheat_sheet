//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mycontract{
     //state variable
        //They are declared as global scope
        //They can be used at any point in your code
        uint256 PhoneNumber;

     //Local Variable 
        //They are declared as local scope
        //They can only be used in functions where they are assigned 
        function MyLocalVariable() public{
            uint256 ThisIsMyLocalVariable = 12;
        }  

    //Data Types

        //Integers that accept only whole numbers 
        uint256 MyUnsignedInteger;
        //Integers that accept both rational and irrational numbers
        
        //Address
        address public Myaddress = msg.sender;
        //0xf3630F3Be1E308Dc68f18A9Ce2603354568AF1D1

        //Assigning Array
        uint256[] public MyArray;
        uint256[] public MyNumbers;

        //Pushing to Arrays
        function AddtoArray(uint256 _MyValues) public {
            MyNumbers.push(_MyValues);
        }

        //Structs
        //Just like Javascript Objects
        struct MyStruct{
            uint256 ID;
            string MyStructString;
            address Myaddress;
        }

    //mappings 
    //A unique Key that corresponds to a unique value
}