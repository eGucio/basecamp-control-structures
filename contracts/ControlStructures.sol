// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ControlStructures {

    function compareNumbers(uint numberOne, uint numberTwo) external pure returns (string memory) {
        if(numberOne>numberTwo) return "Number one is greater than number two";
        else if(numberOne<numberTwo) return "Number one is less than number two";
        else return "Number one equals number two";
    }
    
}