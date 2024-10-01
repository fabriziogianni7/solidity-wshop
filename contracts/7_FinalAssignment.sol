// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Assignemnt Implement a basic voting system where users can vote for candidates, and the owner can declare the winner.
// Implement a voting system where users can vote for a candidate.
// The contract owner can declare the winner based on the votes.
// at the end, you need to vote for real, on testnet

contract SimpleVoting {
// you'll need:
// an array of candidates,
// a mapping for votes
// an owner
// a function that only the owner of the contract can invoke that returns the winner

    address[] public candidates;
    mapping(address => uint) public votes;
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "not authorized");
        _;
    }

    constructor(address[] memory _candidates){
        owner = msg.sender;
        candidates = _candidates;
    }

    function vote(address contendant) public {
        // todo make some check to don't allow people to vote more than once
        votes[contendant] = votes[contendant] + 1;
    }

    function extractWinner() public view onlyOwner returns(address) {
        address winner;
        uint maxVotes;

        for(uint i=0; i <candidates.length; i++ ){
            if(winner != address(0)){ //0x0000000000000
                if(maxVotes < votes[candidates[i]]){
                    maxVotes = votes[candidates[i]];
                    winner = candidates[i];
                }
            }else{
                maxVotes = votes[candidates[i]];
                winner = candidates[i];
            }
        }
        return winner;
    }

}

