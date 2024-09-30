// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * this is a contract to learn data types and functions in solidity.
 * Create a contract that demonstrates the use of different data types (e.g., uint, int, bool, address, string, and arrays and mapping)
 * Create data type, getters and setters
 * at the end, you need to compile and deploy the contract using remix
 */


contract BasicTypes {

    // uint : integers without sign:
    uint public unsignedInteger = 10;
    
    function setUnsignedInteger(uint _value) public {
        unsignedInteger = _value;
    }

    // assignment: do all the other data types  int, bool, address, string, and arrays and mapping
}
