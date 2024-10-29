// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";
contract ControlStructures {
    error InvalidData();
    error AfterHours(uint time);

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

    function fizzBuzz(uint _number) external pure returns(string memory){
        if(_number % 3 == 0 && _number % 5 == 0){return"FizzBuzz";}
        else if(_number % 3 == 0){return"Fizz";}
        else if(_number % 5 == 0){return"Buzz";}
        else return "Splat";
    }

    function doNotDisturb(uint _time) external pure returns(string memory) {
        if(_time > 2400) assert(false);
        else if(_time > 2200 || _time < 800) revert AfterHours(_time);
        else if(_time >= 1200 && _time <= 1259) revert("At lunch!");
        else if(_time >= 1800){return "Evening!";}
        else if(_time >= 1300){return "Afternoon!";}
        else return "Morning!";
        return "Morning!";
    }
}