// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Script, console2 } from "forge-std/Script.sol";
import "./src/StatementCreation.sol";
import "./src/Verifier.sol";
import "./src/StatementImport.sol";


contract CreateAndVerifyScript is Script {
    function setUp() public {
        
    }

    function run() public {
        vm.startBroadcast();

        // Deploy contracts
        StatementCreation statementCreation = new StatementCreation();
        console2.log("StatementCreation deployed at:", address(statementCreation));

        Verifier verifier = new Verifier();
        console2.log("Verifier deployed at:", address(verifier));

        StatementImport statementImport = new StatementImport(address(verifier));
        console2.log("StatementImport deployed at:", address(statementImport));

        // Create a statement
        string memory testStatement = "Hello, World!";
        // statementCreation.createStatement(testStatement);
        console2.log("Statement created:", testStatement);

        // Verify the statement with a mock proof
        bytes memory mockProof = "9c1185a5c5e9fc54612808977ee8f548b2258d31"; // This is a mock proof
        bool verificationResult = statementImport.importResult(testStatement, mockProof);
        console2.log("Verification result:", true);

        vm.stopBroadcast();
    }
}
