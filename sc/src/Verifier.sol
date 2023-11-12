// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IVerifier {
    function verify(string memory result, bytes memory proof) external returns (bool);
}

contract Verifier is IVerifier {
    function verify(string memory /* result */, bytes memory /* proof */) external pure override returns (bool) {
        // Placeholder for verification logic
        return true;
    }
}
