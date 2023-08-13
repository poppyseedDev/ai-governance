// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Voting.sol";

// Mock ERC20 for testing purposes
contract GovCoinMock is IERC20 {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowances;

    function mint(address to, uint256 amount) public {
        balances[to] += amount;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        require(balances[sender] >= amount, "Not enough balance");
        require(allowances[sender][msg.sender] >= amount, "Allowance exceeded");
        balances[sender] -= amount;
        balances[recipient] += amount;
        allowances[sender][msg.sender] -= amount;
        return true;
    }

    function approve(address spender, uint256 amount) public returns (bool) {
        allowances[msg.sender][spender] = amount;
        return true;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}

contract GovernanceTest is Test {
    Governance public governance;
    GovCoinMock public govCoinMock;

    function setUp() public {
        govCoinMock = new GovCoinMock();
        governance = new Governance(address(govCoinMock));
    }

    function testCreateProposal() public {
        uint256 duration = 600; // 10 minutes for example
        governance.createProposal("Test Proposal", duration);
        //Governance.Proposal memory proposal = governance.proposals(0);
        // assertEq(proposal.description, "Test Proposal");
        // assertEq(proposal.yesVotes, 0);
        // assertEq(proposal.noVotes, 0);
        // assertTrue(proposal.endTime > block.timestamp);
        // assertFalse(proposal.closed);
    }

    function testVoting() public {
        // Setup
        uint256 duration = 600;
        governance.createProposal("Test Proposal", duration);
        uint256 voteAmount = 100;
        govCoinMock.mint(address(this), voteAmount);
        govCoinMock.approve(address(governance), voteAmount);

        // Vote "Yes"
        // governance.vote(0, true, voteAmount);
        // Governance.Proposal memory proposal = governance.proposals(0);
        // assertEq(proposal.yesVotes, voteAmount);
        // assertEq(proposal.noVotes, 0);
    }
}
