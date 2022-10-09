pragma solidity ^0.8.12;

contract StorageMemoryVarContract{


    //State Variables or Contract Variables
    uint[] public numArray;

    function operate() public {
        numArray.push(10);
        numArray.push(11);
        numArray.push(12);


    //this will edit the numArray and it is permanent i.e. shalow copy
        // uint[] storage newnumArray = numArray;
        // newnumArray[1]=555;

        // this will cost low gas fee and has no effect outside the scope
        uint[] memory newnumArray = numArray;
        newnumArray[1]=555;
    }
}