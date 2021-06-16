// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDiamondCut {
    enum FacetCutAction {
        Add,
        Replace,
        Remove
    }

    struct FacetCut {
        address facetAddress;
        FacetCutAction action;
        bytes4[] functionSelectors;
    }

    /// @notice Add/replace/remove any number of functions and optionally execute
    ///         a function with delegatecall
    /// @param diamondCut_ Contains the facet addresses and function selectors
    /// @param init_ The address of the contract or facet to execute calldata_
    /// @param calldata_ A function call, including function selector and arguments
    ///                 calldata_ is executed with delegatecall on init_
    function diamondCut(
        FacetCut[] calldata diamondCut_,
        address init_,
        bytes calldata calldata_
    ) external;

    event DiamondCut(
        FacetCut[] _diamondCut,
        address _init,
        bytes _calldata
    );
}