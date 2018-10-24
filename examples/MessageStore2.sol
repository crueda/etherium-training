pragma solidity ^0.4.24;

import "./Ownable.sol";

contract MessageStore2 is Ownable {
    
    string private message;
    
    function setMessage(string newMessage) public payable isOwner {
        require(msg.value == 3 ether);
        message = newMessage;
    }
    
    function getMessage() public view returns (string) {
        return message;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
    function getBalanceInEther() public view returns (uint) {
        return getBalance() / 1e18;
    }
    
}