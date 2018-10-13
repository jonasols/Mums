var ConvertLib = artifacts.require("./ConvertLib.sol");
var MumsToken = artifacts.require("./MumsToken.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MumsToken);
  deployer.deploy(MumsToken);
};
