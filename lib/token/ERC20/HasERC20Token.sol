pragma solidity ^0.4.23;

import {ERC20Basic} from "./ERC20Basic.sol";


contract HasERC20Token {

	function hasToken(
		address _tokenAddress,
		address _who
	) view returns (bool) {
		ERC20Basic tk = ERC20Basic(_tokenAddress);	
		uint bal = tk.balanceOf(_who);
		return (bal > 0);
	}
	
}
