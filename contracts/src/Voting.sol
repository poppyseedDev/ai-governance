// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Governance {

    struct Proposal {
        string description;
        uint256 yesVotes;
        uint256 noVotes;
        uint256 endTime;
        bool closed;
    }

    struct Voter {
        uint256 weight;  // weight of the vote
        bool voted;      // if true, that person already voted
        bool voteChoice; // true for yes, false for no
    }

    mapping(uint256 => Proposal) public proposals;
    mapping(uint256 => mapping(address => Voter)) public proposalVotes; // proposalID => address => Voter
    uint256 public proposalCount = 0;

    // The token used for voting
    IERC20 public govCoin;

    constructor(address _govCoin) {
        govCoin = IERC20(_govCoin);
    }

    function createProposal(string memory _description, uint256 _duration) external {
        proposals[proposalCount] = Proposal({
            description: _description,
            yesVotes: 0,
            noVotes: 0,
            endTime: block.timestamp + _duration,
            closed: false
        });

        proposalCount++;
    }

    function vote(uint256 _proposalId, bool _choice, uint256 _amount) external {
        require(_proposalId < proposalCount, "Invalid proposal ID");
        require(!proposalVotes[_proposalId][msg.sender].voted, "Already voted on this proposal");
        require(!proposals[_proposalId].closed, "Voting is closed for this proposal");
        require(proposals[_proposalId].endTime > block.timestamp, "Proposal voting time expired");

        govCoin.transferFrom(msg.sender, address(this), _amount);  // Transfer and lock tokens

        proposalVotes[_proposalId][msg.sender] = Voter({
            weight: _amount,
            voted: true,
            voteChoice: _choice
        });

        if (_choice) {
            proposals[_proposalId].yesVotes += _amount;
        } else {
            proposals[_proposalId].noVotes += _amount;
        }
    }

    function closeVoting(uint256 _proposalId) external {
        require(_proposalId < proposalCount, "Invalid proposal ID");
        require(!proposals[_proposalId].closed, "Voting is already closed for this proposal");
        require(proposals[_proposalId].endTime <= block.timestamp, "Proposal voting time not yet expired");

        proposals[_proposalId].closed = true;
    }
}

// Simplified ERC20 interface
interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}
