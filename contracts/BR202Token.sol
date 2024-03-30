// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract BR202Token is ERC20, ERC20Permit {
    uint constant _initial_supply = 202 * (10 ** 18);

    constructor() ERC20("BR202Token", "BR202") ERC20Permit("BR202Token") {
        _mint(msg.sender, _initial_supply);
    }
}
