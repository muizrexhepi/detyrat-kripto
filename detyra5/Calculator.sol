// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    function shuma(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function shumezimi(uint x, uint y) public pure returns (uint) {
        return x * y;
    }

    function pjeste(uint x, uint y) public pure returns (uint) {
        require(y != 0, "Nuk lejohet ndarja me zero");
        return x / y;
    }
}
