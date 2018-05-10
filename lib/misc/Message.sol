pragma solidity ^0.4.23;


contract Message {

    mapping (address => string) messages;

    event SentMessage(
		address indexed _from,
		address indexed _to,
		string _msg
    );

    constructor(string init) public {
        messages[msg.sender] = init;
    }

    function sendMessage(
        address _to,
        string _msg
    ) public {
        require(_to != address(0));
        messages[_to] = _msg;
        emit SentMessage(msg.sender, _to, _msg);
        assert(strcmp(_msg, messages[_to]));
    }

    function getMessage() public view returns (string _msg) {
        require(msg.sender != address(0));
        string memory s = messages[_of];
        return s;
    }

    function clearMessage() public {
        require(msg.sender != address(0));
        message[msg.sender] = "";
        assert(strcmp("", message[msg.sender]));
    }

    function strcmp(
        string a,
        string b
    ) public pure returns (bool) {
        return (keccak256(a) == keccak256(b));
    }

}
