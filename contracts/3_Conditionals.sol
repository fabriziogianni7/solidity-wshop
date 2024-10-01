// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * this is a contract to learn conditional statements and the use of require 
 * create a contract that has a myAge variable and a conditional that emit an event saying "you're in" if  myAge >=18 else "you cannot enter" if myAge < 18.
 * hint: you need to set the variable first!
 */


contract Conditionals {

    uint public myAge; 
    event IsOkToEnter(bool isOk, uint age, string message);

    /*
    that's a conditional statement in solidity:
    if(condition){ do things}

    then you can use things like if(condition){do things}else{do other things} and so o 
    n

    */

    constructor(uint newAge){
        myAge = newAge;
    }

    function checkAge() public  {
        require(myAge != 0, "myAge is not initialized");
        /*
        uncomment and complete this:
        // use require to check if myAge is there!!
        //like that: 
        // require(myAge != 0,error message)
        if(myAge > 18){
            // emit event
        }else{
            // emit other event
        }
        */

        if(myAge > 18){
             emit IsOkToEnter(true, myAge,"he/she is ok to enter");
        }else{
             emit IsOkToEnter(false, myAge,"he/she is not ok to enter");
        }
    }



    
}
