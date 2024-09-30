// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * this is a contract to learn functions, contract state and return values in solidity.
 * Create a contract that contains 2 functions:
    one has to modify the contract state and the other one has to return a value
    one of them has to emit an event
 * at the end, you need to compile and deploy the contract using remix
 * check in the remix logs the event that you emitted
 */


contract Functions {


    uint public unsignedInteger = 10;
    event Hello(string indexed hello); // one function need to emit this event this way: emit Hello('hi')
    
    // assignment: create the functions here 


}


