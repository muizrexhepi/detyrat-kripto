// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeChecker {
    uint private number;

    function setNumber(uint _num) public {
        number = _num;
    }

    function checkIfPrime() public view returns (string memory) {
        if (number <= 1) {
            return "Numri NUK eshte i thjeshte";
        }

        for (uint i = 2; i <= number / 2; i++) {
            if (number % i == 0) {
                return "Numri NUK eshte i thjeshte";
            }
        }

        return "Numri ESHTE i thjeshte";
    }

    function getNumber() public view returns (uint) {
        return number;
    }
}
