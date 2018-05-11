pragma solidity ^0.4.23;

import "./StringUtils.sol";


contract BlockArrayEULA {
	
	function certificateText(
		address licenseContractAddress
	) external pure returns (string) {
		string memory s = StringUtils.concat(
			"We, Block Array Corporation, hereby declare that we are under the Ethereum Smart Contract with the Ethereum address, “0x",
			StringUtils.addressToString(licenseContractAddress),
			"“.\n\nBy downloading or using the Block Array License DApp (“Application“), you\n are agreeing to be bound by the terms and conditions of this Agreement.\n\n This Agreement is a legal agreement between you (either an individual or a\n single entity) and Block Array Corporation "
		);
		s = StringUtils.concat(
			s,
			"and it governs your use of the\n Application made available to you by Block Array Corporation.\n\n The Agreement constitutes the entire agreement between you and Block Array\n Corporation regarding your use of the Application and supersedes all prior and\n contemporaneous written or oral agreements between you and Block Array Corporation",
			"\n\nYou may be subject to additional terms and conditions that apply when you use\n or purchase other Block Array Corporation‘s services, which Block Array\n Corporation will provide to you at the time of such use or purchase, otherwise they\n may be found at:\n\n\n https://github.com/blockarraygroup/files/blob/master/LICENSE \n\n\n",
			"The Application is licensed, not sold, to you by Block Array Corporation for\n use strictly in accordance with the terms of this Agreement.\n\n Block Array Corporation grants you a revocable, non-exclusive, non-\ntransferable, limited license to download, install and use the Application\n strictly in accordance with the terms of this Agreement.",
			"\n\n Block Array Corporation provides no warranty or undertaking, and\n makes no representation of any kind that the Application will meet your\n requirements, achieve any intended results, be compatible or work with any\n other software, applications, systems or services, operate without\n interruption, meet any performance or reliability standards or be error free\n or that any errors or defects can or will be corrected.\n\n Any questions may be sent to: \n admin@blockarray.com"
		);

		return s;
	}

}
