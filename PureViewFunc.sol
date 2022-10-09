pragma solidity ^0.8.4;

contract PureViewFunc{
    uint256 num1=2;


//Both Function don't charge any gas fee

    //view func is used to read/view the state
    function someFunc()public view returns(uint256) {
        return num1;
    } 

    //pure func neither view nor modify the state
    function doSomething() public pure returns(uint16){
        return 1+1;
    }
}