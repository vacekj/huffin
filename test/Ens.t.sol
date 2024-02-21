// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract EnsTest is Test {
    /// @dev Address of the ens contract.
    Ens public ens;

    /// @dev Setup the testing environment.
    function setUp() public {
        ens = Ens(HuffDeployer.deploy("ens"));
    }

    /// @dev Ensure that you can set and get the value.
    function testRegister(string memory value) public {
        ens.register(value);
        console.log(value);
    }
}

interface ens {
    function register(string memory name) external;
}
