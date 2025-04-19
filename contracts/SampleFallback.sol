// SPDX-License-Identifier: MIT 

pragma solidity >=0.8.17 <0.9.0;

contract SampleFallback {
    uint public lastvalueSent;
    string public ourString;

    receive() external payable{
        lastvalueSent = msg.value;
        ourString="receive";
    }
    fallback() external payable{
        lastvalueSent = msg.value;
        ourString="fallback";
    }    
}