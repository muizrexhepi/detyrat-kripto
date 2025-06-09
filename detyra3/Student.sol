// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student {
    uint private studentId;
    string public emri;
    string public mbiemri;
    string public drejtimi;

    constructor(
        uint _id,
        string memory _emri,
        string memory _mbiemri,
        string memory _drejtimi
    ) {
        studentId = _id;
        emri = _emri;
        mbiemri = _mbiemri;
        drejtimi = _drejtimi;
    }

    function getStudentId() public view returns (uint) {
        return studentId;
    }
}
