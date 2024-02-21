// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface ens {
    function register(string memory name) external;
}

contract Deploy is Script {
    function run() public returns (SimpleStore simpleStore) {
        simpleStore = SimpleStore(HuffDeployer.deploy("SimpleStore"));
    }
}
