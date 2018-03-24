/*
 * Owner is an ownership set of rules for smart contracts
 * Smart Contract written in Solidity 0.4.18
 * 
 * Author: Oscar Chavez <oschvr@gmail.com>
 * Last Updated: 22/02/2018
 * v 0.1
 *
 */

pragma solidity ^0.4.18;

/**
 * @title Owner
 * @dev Owner contract has an owner address, provides basic authorization control
 */
contract Owner {
	address public owner;

	/*
	 * @dev Event to log the transfer of ownership
 	 */
	event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
	
	/*
	 * @dev Throws if called is not account of owner.
	 */
	modifier ifOwner() {
		require(msg.sender == owner);
		_;
	}

	/*
	 * @dev Owner constructor. Sets the original owner to the sender account.
	 */
	function Owner() public {
		owner = msg.sender;
	}

	/*
	 * @dev Allows current owner to transfer control to newOwner.
	 * @param newOwner The address to receive control.	
	 */
	function transferOwnership(address newOwner) public ifOwner {
		require(newOwner != address(0));
		emit OwnershipTransferred(owner, newOwner);
		owner = newOwner;
	}
}



