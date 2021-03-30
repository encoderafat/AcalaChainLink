// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@acala-network/contracts/dex/IDEX.sol";
import "@acala-network/contracts/utils/Address.sol";

contract Dex is ADDRESS {
    IDEX dex = IDEX(ADDRESS.DEX);

    function getLiquidityPool(address tokenA, address tokenB) public view returns (uint256, uint256) {
        return dex.getLiquidityPool(tokenA, tokenB);
    }

    function getSwapTargetAmount(address[] memory path, uint256 supplyAmount) public view returns (uint256) {
        return dex.getSwapTargetAmount(path, supplyAmount);
    }

    function getSwapSupplyAmount(address[] memory path, uint256 targetAmount) public view returns (uint256) {
        return dex.getSwapSupplyAmount(path, targetAmount);
    }

    function swapWithExactSupply(address[] memory path, uint256 supplyAmount, uint256 minTargetAmount) public payable returns (bool) {
        return dex.swapWithExactSupply(path, supplyAmount, minTargetAmount);
    }

    function swapWithExactTarget(address[] memory path, uint256 targetAmount, uint256 maxSupplyAmount) public payable returns (bool) {
        return dex.swapWithExactTarget(path, targetAmount, maxSupplyAmount);
    }
}
