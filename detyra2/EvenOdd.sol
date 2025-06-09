// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOdd {
    function isEven(uint256 number) public pure returns (string memory) {
        if (number % 2 == 0) {
            return "Numri eshte cift";
        } else {
            return "Numri eshte tek";
        }
    }
}
