// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";
contract ControlStructures {
    error InvalidData();
    function compareNumbers(uint numberOne, uint numberTwo) external pure returns (string memory) {
        //require(numberOne > 0 && numberTwo > 0, "Invalid data");
        if(numberOne<=0 || numberTwo<=0){
            revert InvalidData();
        }
        if(numberOne>numberTwo) return "Number one is greater than number two";
        else if(numberOne<numberTwo) return "Number one is less than number two";
        else return "Number one equals number two";
    }
    function loop() external pure{ 
        for(uint index=0; index<8;index++){
            if(index==2){
                console.log("index is ", index);
                continue ;
            }
            console.log("After index ==2");
            if(index==4){
                console.log("index is ", index);
                break;
            }
            console.log("End of the loop");
        }
    }
}