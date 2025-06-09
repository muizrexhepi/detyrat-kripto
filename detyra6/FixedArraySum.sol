// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArraySum {
    uint[5] public numbers; // Array me madhësi fikse prej 5 elementësh

    function setValues(
        uint a,
        uint b,
        uint c,
        uint d,
        uint e
    ) public {
        numbers[0] = a;
        numbers[1] = b;
        numbers[2] = c;
        numbers[3] = d;
        numbers[4] = e;
    }

    function shuma() public view returns (uint) {
        uint total = 0;
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }
}
