import "./Ownable.sol";
pragma solidity 0.5.12;

contract Destroyable is Ownable{

    function selfDestruct() public onlyOwner { //onlyOwner is custom modifier
        address payable receiver = msg.sender;
        selfdestruct(receiver);  // `sender` is the owners address but it's not payable so we need to turn it payable above
    }

}
