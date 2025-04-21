// SPDX-License-Identifier: MIT

// 1. Deploy mock when we are on a local anvil chain
// 2. Keep track of contract address across different chains

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MockV3Aggregator} from "../test/mocks/MockV3Aggregator.sol";

contract HelperConfig is Script {
    // If we are on local anvil chain, we deploy mocks
    // Otherwise, grab the existing address from the live network
    NetworkConfig public activeNetworkConfig;

    uint8 public constant DECIMALS = 8;
    int256 public constant INITIAL_PRICE = 2000e8;

    struct NetworkConfig {
        address priceFeed; // ETH/USD price feed address
    }

    constructor() {
        if(block.chainid == 11155111) activeNetworkConfig = getSepoliaETHConfig();
        else activeNetworkConfig = getOrCreateAnvilETHConfig();
    }

    function getSepoliaETHConfig() public pure returns (NetworkConfig memory) {
        // price feed address
        NetworkConfig memory SepoliaConfig = NetworkConfig({priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
        return SepoliaConfig;
    }

    function getOrCreateAnvilETHConfig() public returns (NetworkConfig memory) {
        if(activeNetworkConfig.priceFeed != address(0)) return activeNetworkConfig;
        // price feed address

        // 1. Deploy mock
        // 2. Return mock address

        vm.startBroadcast();
        MockV3Aggregator mockAnvilPriceFeed = new MockV3Aggregator(DECIMALS, INITIAL_PRICE);
        vm.stopBroadcast();

        NetworkConfig memory anvilConfig = NetworkConfig({priceFeed: address(mockAnvilPriceFeed)});
        return anvilConfig;
    }
}

