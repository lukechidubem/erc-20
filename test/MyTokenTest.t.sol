// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {DeployMyToken} from "../script/DeployMyToken.s.sol";
import {MyToken} from "../src/MyToken.sol";
import {Test, console} from "forge-std/Test.sol";

// import {ZkSyncChainChecker} from "lib/foundry-devops/src/ZkSyncChainChecker.sol";

interface MintableToken {
    function mint(address, uint256) external;
}

contract OurTokenTest is Test {
    uint256 BOB_STARTING_AMOUNT = 100 ether;
    uint256 public constant INITIAL_SUPPLY = 1_000_000 ether;

    MyToken public myToken;
    DeployMyToken public deployer;
    address public deployerAddress;
}
