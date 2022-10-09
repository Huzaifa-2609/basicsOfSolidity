pragma solidity ^0.8.4;

contract EventModifierDemo {

    event LogUserTx(address indexed userAddress, uint amount);

    modifier onlyTwoEther() {
        //msg.value holds the amount of ether that was sent
        require(msg.value==2 ether);
        _; //this is how we end a modifier
    }
    function sendEther() public payable onlyTwoEther() {
        emit LogUserTx(msg.sender, msg.value)
    }
    
}