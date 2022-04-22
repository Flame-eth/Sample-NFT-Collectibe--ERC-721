// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../@openzeppelin/contracts/token/ERC721/ERC721.sol';


contract MyCollectible is ERC721 {

    string[] public colors;
    mapping (string => bool)_colorExists;

    constructor() ERC721("Color", "COLOR") {
    }
    function mint(string memory _color)public {
        require(_colorExists[_color]);
        uint _id = colors.push(_color);
        _mint(msg.sender, _id);
        _colorExists[_color] = true;

    }

}