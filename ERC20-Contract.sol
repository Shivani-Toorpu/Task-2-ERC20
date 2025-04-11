// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the OpenZeppelin ERC20 implementation
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        // Mint initial supply to the deployer's address
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
