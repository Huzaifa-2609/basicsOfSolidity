pragma solidity ^0.8.4;
contract StructFuncContract{
    Product public laptop;
    // define the custom datatype 
    struct Product{
        string productName;
        string category;
        uint price;
        uint16 code;
    }
    function initializeProduct()public{
        laptop = Product({productName: "Acer Laptop", category:"electronic", price:67554, code: 678 });
    }
}