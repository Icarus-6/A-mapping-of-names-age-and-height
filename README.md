# A-mapping-of-names-age-and-height
My first project as a part of my studies of Solidity.

My first simple smart contract running on Solidity which can create a list of people and their additional information based on the user's input. Furthermore, it contains a self-destruct function that can be called only by the owner.

The contract uses payable functions (as certain functions require little payments, inheritance, external contracts (destroyable.sol - with the code for self-destruct, and ownable.sol - indicating that only the owner can call the function)

The main file is external contracts.sol with additional two external dependent contracts needed - destroyable.sol, ownable.sol.
