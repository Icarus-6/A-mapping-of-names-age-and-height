import "./Ownable.sol";
import "./Destroyable.sol";
pragma solidity 0.5.12;


// DEFINITON
contract HelloWorld{
    function createPerson(string memory name, uint age, uint height) public payable;
    }

//LOCATION
contract ExternalContract{
    
    HelloWorld instance = HelloWorld(0xC9CF4a65eA682861Fb68Ab02B973026468b27A83);
    
    
    // we call upon the deployed contract using its address - kind of like a varible that points to contract address
    // we need to define the contract itself, Solidity doesn't know what HelloWorld is - a string? an integer? A boolean?
    // so in order to define it, we need an interface just above -looks like a new contract
    

    function externalCreatePerson(string memory name, uint age, uint height) public payable{
        
        //CALL createPerson in HelloWorld contract
        // forward any ehter to Helloworld contract since 1 ETH is expected
        
            instance.createPerson.value(msg.value)(name, age, height);
    
    // SOlidity sees an empty contract so we need to copy the header from the original file
    // the instance needs to explicitely implement the msg.value which is an input from user
        
    }
    
    // When called after deployment, only the creator and msg.sender of the external contract can call the createdPerson after its creation
    // the owner of the original contract cannot call it since the other person simply borrowed the functionality      
}
