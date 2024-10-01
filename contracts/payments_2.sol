// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// that's a little bit complex so I'll go trhough it. 
// then, the exercise is to rewrite this contract  but you need to send money each other
// deploy this contract, send the address to your mate. your mate should send something here
// as a task, you need to go to the sepolia block explorer and check the transaction you sent!
// for this task, you need to create a wallet: https://metamask.io/it/
// then go here to get test tokens: https://faucets.chain.link/sepolia

contract Multisend {
        receive() external payable {}
        mapping(address => bool) public withdrawn;

       

       function multisend(address[] memory receivers) public{
         require(msg.sender == 0x39806bDCBd704970000Bd6DB4874D6e98cf15123, "Not authorized");
        for(uint i =0; i<receivers.length; i++ ){
         //payable(msg.sender).transfer(1 ether);
         payable(receivers[i]).transfer(1000000000000000000);
        }
       }
       function withdraw() public{
        require(msg.sender == 0x39806bDCBd704970000Bd6DB4874D6e98cf15123, "Not authorized");
         payable(0x39806bDCBd704970000Bd6DB4874D6e98cf15123).transfer(address(this).balance);
       }
}



 /// 1 ETH =   1,00000000000000000000
 /// 0.1 ETH = 0,20000000000000000000
 /// 0.001  =  0,000001000000000000000

// ["0x9f44f904859aF820cC2E5e06C28209449dBfDA0C","0xdb2D9d5F820A334be06D15f7818eC6c33b894d29","0xAf7Dbe98A60c89A9366aA34DBFAd000246938538","0xE5106672a75139d5059d8fA933c26CD2FF290991","0x620Eb525C02a0F538c8f395D178d32F96e452BC2","0xc1d0f34047D4123a3377128FeCe737A825c25dDE","0xD84BB42B831AEaE73E97346714B663Ef8d694b64","0x61B40de4fCbB91c40CadC4ead13B67fD3A8862ec"]
// ["0x19e0A2879127A02Ff12970F779EfaDB5318106Cc"]
// ["0x02a3330b92507d7A14D23D6F8dC8BCA1f4FB2d68"]
