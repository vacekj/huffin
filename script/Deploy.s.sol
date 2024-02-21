// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface Ens {
    function register() external payable;
    function get() external view returns (address);
}

contract Deploy is Script {
    function run() public returns (Ens ens) {
        ens = Ens(HuffDeployer.deploy("Ens"));
    }
}
