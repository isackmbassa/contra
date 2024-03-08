// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract middleman {
    address public target = 0xDF80558E5AAa39d17DbF43e50Fe009342f8FDb5D;

    function attack(uint256 _damage) external {
        (bool success, bytes memory result) = target.call(abi.encodeWithSignature("attack(uint256)", _damage));
        require(success, string(result));
    }
}