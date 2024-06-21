// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract ErrorHandling {
  address public owner;
  uint public value;
  bool public result;

  constructor()
  {
    owner=msg.sender;
  }
  function CheckRequire() public {
    value = value+10;
    require(msg.sender == owner,"Only Owner can access this function");
  }
  function CheckAssert() public {
    assert(value!=0);
    result=true;
  }
  function CheckRevert() public {
    value = value+10;
    if(msg.sender != owner)
    {
        revert("Caller is not the owner");
    }
  }
}
      
