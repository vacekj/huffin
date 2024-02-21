// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import {stdStorage, StdStorage} from "forge-std/Test.sol";

contract EnsTest is Test {
    using stdStorage for StdStorage;
    /// @dev Address of the ens contract.
    Ens public ens;

    /// @dev Setup the testing environment.
    function setUp() public {
        ens = Ens(HuffDeployer.deploy("Ens"));
    }

    /// @dev Ensure that you can set and get the value.
    function testRegister() public {
        ens.register();
    }

    function testGet() public {
        ens.register();
    }
}

interface Ens {
    function register() external payable;
    function get() external view returns (address);
}
