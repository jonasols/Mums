pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MumsToken.sol";

contract TestMumsToken {

  function testInitialBalanceUsingDeployedContract() public {
    MumsToken mums = MumsToken(DeployedAddresses.MumsToken());

    uint expected = 10000;

    Assert.equal(mums.getBalance(tx.origin), expected, "Owner should have 10000 MumsToken initially");
  }

  function testInitialBalanceWithNewMumsToken() public {
    MumsToken mums = new MumsToken();

    uint expected = 10000;

    Assert.equal(mums.getBalance(tx.origin), expected, "Owner should have 10000 MumsToken initially");
  }

}
