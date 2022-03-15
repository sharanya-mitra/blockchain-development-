// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;
contract StartStopUpdateExample{
    address owner;
    bool public pasued;
    
    constructor() public{
         owner = msg.sender;
                        }   
   function sendMoney() public payable{

    }
    function setPaused(bool _paused) public{
        require(msg.sender == owner,"You are not the owner");
        pasued =_paused;
    }
    function withdrawAllMoney(address payable _to) public{
        require(msg.sender==owner,"You are not the owner");
        require(!pasued,"Contract is paused");
        _to.transfer(address(this).balance);
    }

    function destroyContract(address payable _to) public{
        require(msg.sender==owner,"You are not the owner");
        selfdestruct(_to);
    }


}