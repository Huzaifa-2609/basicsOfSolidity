pragma solidity ^0.8.4;
contract PayableView{


    //if we have a payable constructor then we can ether to this smart contract
    constructor()payable {

    }

    //this function is not going to change the state of network or change the smart contract
    function checkBalance() public view returns(uint256){
                        //gives the address of the smart contract
        uint256 balance= address(this).balance;
        return balance;
    }

}