// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract WorkingWithVariables{
    uint256 public myUnit;
    bool public myBool;
    uint8 public myUint8;
    address public myAddress;
    string public myString = 'hello World';

    function setMyUint(uint _myUint) public{
        myUnit = _myUint;
    }
    function setMybool(bool _myBool) public {
        myBool = _myBool;
    }
    function incremenUint() public{
        myUint8++;
    }
    function decremenUint() public{
        myUint8--;
    }
    function setAddress(address _address) public{
        myAddress =_address;
    }
    function getBalanceOfAddress() public view returns(uint)
    {
        return myAddress.balance;
    }
    function setMyString(string memory _myString) public{
        myString = _myString;
    }
}