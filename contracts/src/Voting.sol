// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Voting Contract
/// @author Aurora Poppyseed
/// @notice This contract allows for simple voting on candidates.
/// @dev This is a basic version, and does not include advanced features like secret voting or delegation.
contract Voting {
    
    // Represents a single candidate
    struct Candidate {
        uint id;           // Candidate's ID
        string name;       // Candidate's name
        uint voteCount;    // Number of votes received
    }

    // Maps the address of each voter to a boolean indicating if they've voted
    mapping(address => bool) public voters;
    
    // Maps the ID of each candidate to their details
    mapping(uint => Candidate) public candidates;
    
    // Stores the total number of candidates
    uint public candidatesCount;

    /// @notice An event indicating that a vote has been cast
    /// @param _candidateId The ID of the candidate who received the vote
    event votedEvent(uint indexed _candidateId);

    /// @notice The constructor initializes the contract with two candidates
    constructor() {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    /// @dev Adds a new candidate to the contract
    /// @param _name The name of the candidate
    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    /// @notice Casts a vote for a specific candidate
    /// @dev Checks that the voter hasn't voted before and that the candidate ID is valid
    /// @param _candidateId The ID of the candidate to vote for
    function vote(uint _candidateId) public {
        require(!voters[msg.sender], "Voter has already voted.");
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate.");

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;

        emit votedEvent(_candidateId);
    }
}
