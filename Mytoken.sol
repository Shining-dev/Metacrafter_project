// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Variables
    string public tokenName = "Code";
    string public tokenSymbol = "Super Code";
    uint256 public totalSupply = 0;

    // Mapping
    mapping(address => uint256) public balances;

    // Mint Function
    function mint(address _to, uint256 _value) external {
        require(_to != address(0), "Invalid address");
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn Function
    function burn(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }
}
