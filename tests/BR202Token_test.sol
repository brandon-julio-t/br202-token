// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/BR202Token.sol";

contract BR202TokenTest is BR202Token {

    function testTokenInitialValues() public {
        Assert.equal(name(), "BR202Token", "token name did not match");
        Assert.equal(symbol(), "BR202", "token symbol did not match");
        Assert.equal(decimals(), 18, "token decimals did not match");
        Assert.equal(totalSupply(), 202 * (10 ** 18), "token supply should be zero");
    }
}