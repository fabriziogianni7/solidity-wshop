// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * Create a contract that has an array. initialize the array and loop trough its values
 */


contract Loops {
       
       // that's an array: 
        string[] public elements;
        uint public counter;

         constructor(string[] memory _elements){
            elements= _elements;
         }

         function loopWhatever() public {
            for(uint i = 0; i< elements.length; i++){
               counter = counter +1;
               elements.push("pushed value");

            }
         }

         function loopWhateverInMemory (string[] memory memoryElements) public pure {
            for(uint i = 0; i< memoryElements.length; i++){
              memoryElements[i] = "ciao";
             // memoryElements.push("ciao"); not valid outside storage

            }
         }

         function getCounter() public view returns(uint){
            return counter;
         }

        // you loop trough it this way:
         //  for (uint i = 0; i < elements.length; i++) {
         //     // do things
         // }

       // the assignment is to create a function to populate the array using .push(element) so that --> elements.push(newElement)
       // and to loop trough the array and emit an event for each element

    }



    

