// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// that's a little bit complex so I'll go trhough it. 
// then, the exercise is to rewrite this contract  but you need to send money each other

contract SimpleWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    receive() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}