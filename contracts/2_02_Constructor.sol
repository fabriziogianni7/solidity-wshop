// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * create a cointract with some state variable that need to be initialized in the constructor
 */


contract Constructor {

// create a state variable here
uint public someVariable ;
// create a constructor here
 constructor(uint initVariable) {
    someVariable = initVariable;
 }
 
 function getInitializedVariable() public view returns(uint){
    return someVariable;
 }


}


