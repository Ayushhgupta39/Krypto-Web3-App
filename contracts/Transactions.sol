// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Deployed to 0x72cE30e4722CceB9380df543E138a9c53770e8f1
contract Transactions {
    uint256 transactionCount;

    event Transfer (address from, address receiver, uint amount, string message, uint timestamp, string keyword);

    struct Memo {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint timestamp;
        string keyword;
    }

    Memo[] memos;

    function sendCrypto (address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        memos.push(Memo(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer (msg.sender, receiver, amount, message, block.timestamp, keyword);

    }

    function getAllMemos () public view returns (Memo[] memory) {
        return memos;
    }

    function getTransactionCount () public view returns (uint) {
        return transactionCount;
    }
}