// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract PrivateLayer {
    //Private info can add more(?)
    struct PrivateInfo { //without hash info
        string IcNumber; 
        string BankAcc;
    }

    mapping(address => PrivateInfo) private privateInfoRegistry; //registry

    //log new register with ed
    event PrivateInfoRegistered(address useraddress, string IcNumber, string BankAcc);

    //function registering private info
    function registerPrivateInfo(
        address useraddress,
        string memory IcNumber,
        string memory BankAcc
    )
    public {//storing private info
        privateInfoRegistry[useraddress] = PrivateInfo(IcNumber, BankAcc);
    }

    //retrieve privare info(only for authorize user)
    function getPrivateInfo(address useraddress) public view returns (string memory IcNumber, string memory BankAcc) {
        PrivateInfo memory info = privateInfoRegistry[useraddress];
        return (info.IcNumber, info.BankAcc);
    }
}