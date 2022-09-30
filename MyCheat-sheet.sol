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
        //Holds multiple data types and their value
        struct MyStruct{
            uint256 ID;
            string MyStructString;
            address Myaddress;
        }

    //mappings 
    //A unique Key that corresponds to a unique value
        mapping(uint256 => string) name;
    mapping(uint256 => Book) public Heroku;
    //sigh....nested mappings
    mapping(address => mapping(uint256 => Book))Complicated;
 
struct Book{
    string title;
    string author;
}

    constructor(){
        //Adding data to a mapping
        //syntax: nameofmapping["key"] = "value";
        name[1] = "i am one";
        name[2] = "i am two";
        name[3] = "i am three";
    }


    //mapping key value pair data entry
    function AddBook
    (uint _id,
     string memory _title,
      string memory Author)
       public{
        Heroku[_id] = Book(_title, Author);
    }

    
    // conditionals
    //loops
    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function CheckEven() public view returns(uint256){
        uint256 counterz = 0;

        for(uint256 i = 0; i <numbers.length;  i++){
            if(IsEven(numbers[i])){
                counterz++;
            }
        }
        return counterz;
    }

    function IsEven(uint256 _Even) public pure returns(bool){
        if(_Even % 2 == 0){
            return true;
        }else{
            return false;
        }
    }

    //modifiers
    //enums
    //event
}