// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract PublicLayer {
    //public info can add more(?)
    struct PublicInfo
    string name;
    uint BDate;
    bytes32 icHash; //Hashed Ic reference from Private Layer
}