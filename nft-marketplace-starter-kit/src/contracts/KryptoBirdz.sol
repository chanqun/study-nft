// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Connector.sol';

contract Kryptobird is ERC721Connector {

    //array to store our nfts
    string [] public KryptoBirdz;
    
    function mint(string memory _KryptoBird) public {

        // this is deprecated - uint _id = KryptoBirdz.push(_KryptoBird);

        KryptoBirdz.push(_KryptoBird);
        uint _id = KryptoBirdz.length - 1;

        _mint(msg.sender, _id);
    }

    constructor() ERC721Connector('KryptoBird', 'KBIRDZ') {
        
    }
}