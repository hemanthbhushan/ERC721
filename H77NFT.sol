// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";



contract H77NFT is ERC721{
     address owner;
     uint256 counter ;

     modifier  onlyOwner(){
          require(msg.sender == owner,"only owner can access this function");
          _;
     }

     constructor() ERC721("H77Music","H77"){
          owner = msg.sender;
     }


     function mintH77(address _to) public onlyOwner {
          _safeMint(_to,counter);
          counter++;
          

     }




}
