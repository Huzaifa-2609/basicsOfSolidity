pragma solidity ^0.8.4;

contract ConsFunc{

    address public owner;

    //special function that cannot be called outside
    //its only be called when the smart contract get deployed on the network
    constructor(){
        //msg.sender-> it holdsthe address which is used to deploy the contract
        owner= msg.sender;
    }
    function changeOwnerShip(address newOwner)public{
        require(owner==msg.sender, "Only the owner can change the current owner");
         owner=newOwner;
    }
}