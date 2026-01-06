// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title HolocronRouter
 * @notice A Universal Registry for Coordinate Existence.
 * @dev Deployed via CREATE2 to exist at the same address on all chains.
 */
contract HolocronRouter {

    struct HolocronEntry {
        bool exists;
        address provider;
        uint40 timestamp;
    }

    // Mapping: Universal Coordinate -> Entry
    mapping(uint256 => HolocronEntry) public registry;

    event HolocronStocked(uint256 indexed coordinate, address indexed provider);

    // No constructor arguments to keep CREATE2 deployment simple.
    // If you need an owner, use 'initialize' pattern or hardcode it via internal logic.
    
    /**
     * @notice Register a coordinate.
     * @param _coordinate The Universal HolOutHash provided by the Agent.
     */
    function stock(uint256 _coordinate) external {
        // Idempotency: If already stocked, stop to save gas.
        if (registry[_coordinate].exists) {
            return;
        }

        registry[_coordinate] = HolocronEntry({
            exists: true,
            provider: msg.sender,
            timestamp: uint40(block.timestamp)
        });

        emit HolocronStocked(_coordinate, msg.sender);
    }

    function checkExistence(uint256 _coordinate) external view returns (bool) {
        return registry[_coordinate].exists;
    }
}
