// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {IVerifier} from "./Verifier.sol";
contract StatementImport {
    IVerifier verifier;

    constructor(address _verifierAddress) {
        verifier = IVerifier(_verifierAddress);
    }

    function importResult(string memory result, bytes memory proof) public returns (bool) {
        return verifier.verify(result, proof);
    }
}
