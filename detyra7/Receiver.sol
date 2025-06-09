// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Receiver {
    event ReceivedETH(string functionType, uint amount, address sender);

    receive() external payable {
        emit ReceivedETH("receive", msg.value, msg.sender);
    }

    fallback() external payable {
        emit ReceivedETH("fallback", msg.value, msg.sender);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
