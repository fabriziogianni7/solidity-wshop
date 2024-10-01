// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * Create a contract to store a list of animals using a struct and a mapping, and implement functions to add and retrieve data.
 */


contract StructAndMappings {
        /*
        a struct is something like that:
        */
        struct Person {
            string name;
            uint age;
            // and so on
        }

        // that's a mapping: this is mapping a number (an index) to a person, so that when I add a person, this would be tied to an index: 
        // eg: 1 -> Fabrizio, 2 -> Chiara, 3 -> Francesco
        // hint: you need to keep the count of the index. how?
        mapping (uint => Person) public people;
        uint public counter;


        //people[key] = value
//
        //Person me = people[key]

        function newPerson() public pure returns(Person memory){
            Person memory me = Person({
                name: "fabri",
                age: 30
            });
            return me;
        }

        
       


        // assignment: create a struct for animals, make a mapping of Animals 
        // you need to declare the struct and the mapping. then you need to create a function to add elements to the mapping and a function to get the element at the nth index


    }



    

