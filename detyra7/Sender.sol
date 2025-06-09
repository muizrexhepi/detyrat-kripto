// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sender {
    function sendToReceiver(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }

    function sendWithData(address receiver) public payable {
        (bool success, ) = receiver.call{value: msg.value}(abi.encodeWithSignature("doesNotExist()"));
        require(success, "Transfer failed");
    }
}
