// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IDiamondCut.sol";

contract GATEDiamond {

    struct DiamondArgs {
        address owner;
    }

    constructor(
        IDiamondCut.FacetCut[] memory diamondCut_,
        DiamondArgs memory args_
    )
    payable {

    }
}