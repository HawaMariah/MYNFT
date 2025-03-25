// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {MyNft} from "src/MyNft.sol";

contract MyNftTest is Test{
     string constant NFT_NAME = "MyNFT";
    string constant NFT_SYMBOL = "MNFT";
MyNft public myNft;

address alice = makeAddr("alice");
address bob = makeAddr("bob");

function setUp() public {
    myNft = new MyNft();
    }

// test if mint function successfully passes
function testMintPass() public {
    myNft.mint(alice);
     myNft.mint(bob);

}


// verifies the nft contract was initialized with expecte name and symbol
      function testInitializedCorrectly() public view {
        assert(keccak256(abi.encodePacked(myNft.name())) == keccak256(abi.encodePacked((NFT_NAME))));
        assert(keccak256(abi.encodePacked(myNft.symbol())) == keccak256(abi.encodePacked((NFT_SYMBOL))));
    }



}
