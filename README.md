# Governance Voting Smart Contract

This smart contract offers a decentralized mechanism for proposal submission and voting. The core principle revolves around staking the `GovCoin` token to amplify the voter's influence.

## Features

- **Proposal Creation:** Anyone can submit a proposal for consideration by the community.
  
- **Token-based Voting:** Votes are weighted by the number of `GovCoin` tokens a user locks in. The more tokens staked, the greater the voting power.

- **Simple Voting Choices:** Users can cast their votes in one of two ways: "yes" or "no".

- **One Vote Per User:** To maintain fairness, each user can only vote once on a specific proposal.

- **Time-bound Voting:** Each proposal comes with a predetermined time limit. Once this duration expires, no further votes can be cast on that proposal, and it's officially closed for consideration.

## Importance of Staking

By requiring users to stake `GovCoin` tokens to vote, we ensure two primary objectives:

1. **Skin in the Game:** Users are likely to vote more judiciously, given they have a vested interest in the outcome.
  
2. **Prevention of Sybil Attacks:** The staking mechanism makes it costly for any entity to try and manipulate the vote by creating multiple accounts.

---

## Integration with Fe

Initially, my strategy was to script the code in Solidity and subsequently adapt it to Fe. This approach would provide an opportunity to not only transition between the languages but also to evaluate the nuances and capabilities of Fe as a smart contract language.

To successfully run Fe fo to the [Fe website](https://fe-lang.org/) and download the Fe binary for your specific repository.

For those interested in diving deeper into the Fe implementation, the code can be found at [fe-voting directory](./fe-voting).
