// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract MyNft is ERC721 {
uint256 public currentTokenId;
//keep track of the last minted tokens id

// creates an ERC721 token called "MyNft" and symbol "MNFT"
constructor () ERC721 ("MyNFT" , "MNFT"){}

function mint (address recipient) public payable returns(uint256){
uint256 newItemId = ++currentTokenId;
_safeMint(recipient, newItemId);
return newItemId;
}
}