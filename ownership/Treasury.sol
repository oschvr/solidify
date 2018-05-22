/*
 * Treasury is an ownership set of rules for smart contracts
 * Smart Contract written in Solidity 0.4.18
 * 
 * Author: Oscar Chavez <oscar@vr3.io>
 * Last Updated: 22/05/2018
 * v 0.2
 *
 */

pragma solidity ^0.4.18;

/**
 * @title Treasury
 * @dev Treasury contract has an owner address, provides basic authorization control
 */
contract Treasury {
	address public treasury;

	/*
	 * @dev Event to log the transfer of ownership
 	 */
	event TreasuryTransferred(address indexed previousOwner, address indexed newOwner);
	
	/*
	 * @dev Throws if called is not account of owner.
	 */
	modifier ifTreasury() {
		require(msg.sender == treasury);
		_;
	}

	/*
	 * @dev Treasury constructor. Sets the original owner to the sender account.
	 */
	function Treasury() public {
		treasury = msg.sender;
	}

	/*
	 * @dev Allows current owner to transfer control to newOwner.
	 * @param newOwner The address to receive control.	
	 */
	function transferTreasury(address newTreasury) public ifTreasury {
		require(newTreasury != address(0));
		TreasuryTransferred(treasury, newTreasury);
		treasury = newTreasury;
	}
}



