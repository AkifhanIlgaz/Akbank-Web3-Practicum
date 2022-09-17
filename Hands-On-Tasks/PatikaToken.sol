//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PatikaToken is ERC20 ("Patika", "PTK") {
    uint256 _initialSupply = 100 * (10**18);
    mapping(uint256 => bool) map;
    constructor() {
        _mint(msg.sender, _initialSupply);
    }
}
