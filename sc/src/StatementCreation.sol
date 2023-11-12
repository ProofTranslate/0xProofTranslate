// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StatementCreation {
    string private statement;

    function createStatement(string memory _statement) public {
        statement = _statement;
    }

    function getStatement() public view returns (string memory) {
        return statement;
    }
}
