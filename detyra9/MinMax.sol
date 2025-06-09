// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinMaxFinder {
    uint[] public data;

    function addData(uint _value) public {
        data.push(_value);
    }

    function getMax() public view returns (uint) {
        require(data.length > 0, "No data available");

        uint max = data[0];
        for (uint i = 1; i < data.length; i++) {
            if (data[i] > max) {
                max = data[i];
            }
        }
        return max;
    }

    function getMin() public view returns (uint) {
        require(data.length > 0, "No data available");

        uint min = data[0];
        for (uint i = 1; i < data.length; i++) {
            if (data[i] < min) {
                min = data[i];
            }
        }
        return min;
    }

    function getAllData() public view returns (uint[] memory) {
        return data;
    }
}
