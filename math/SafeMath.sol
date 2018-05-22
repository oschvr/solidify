/* SafeMath is a contract that makes math operations safe
 * Smart Contract written in Solidity 0.4.18
 *
 * Author: Oscar Chavez <oscar@vr3.io>
 * Last Updated: 22/05/2018
 * v 0.2
 *
 */

pragma solidity ^0.4.21;

/**
 * @title SafeMath
 * @dev SafeMath makes operations with safety checks that throw errors
 */
contract SafeMath {
	
	/*
	 * @dev Multiplies two numbers, throws overflow.
	 */
	function mul(uint256 a, uint256 b) internal pure returns (uint256) {
		if(a == 0) {
			return 0;
		}
		uint256 c = a * b;
		assert(c / a == b);
		return c;
	}

	/*
	 * @dev Divides two numbers.
	 */
	function div(uint256 a, uint256 b) internal pure returns (uint256) {
		uint256 c = a / b;
		return c;
	}

	/*
	 * @dev Substracts two numbers, throws on overflow.
	 */
	function sub(uint256 a, uint256 b) internal pure returns (uint256) {
		assert(b <= a);
		return a - b;
	}

	/*
	 * @dev Adds two numbers, throws on overflow.
	 */
	function add(uint256 a, uint256 b) internal pure returns (uint256) {
		uint256 c = a + b;
		assert(c >= a);
		return c;
	}
}
