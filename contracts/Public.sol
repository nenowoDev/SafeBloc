// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract PublicLayer {
    //public info can add more(?)
    struct PublicInfo {
    string name;
    uint BDate;
    bytes32 IcHash; //Hashed Ic reference from Private Layer
    }

    mapping(address => PublicLayer) public publicInfoRegistry; //registry

    //log new register with ed
    event PublicInfoRegistered (address useraddress, string name, uint BDate, bytes32 icHash);

    //funtion registering public info
    function registerPublicInfo (
        address useraddress,
        string memory name,
        uint BDate,
        string memory IcNumber //reference to private layer
    )
    public {
        bytes32 IcHash = keccak256(abi.encodePacked(IcNumber)); //hashing ic
        publicInfoRegistry[useraddress] = PublicLayer(name, BDate, IcHash);

        emit PublicInfoRegistered(useraddress, name, BDate, IcHash);
    }

    //verify Private reference hash without revealing private info
    function verifyHash(address useraddress, string memory IcNumber) public view returns(bool) {
        bytes32 IcHash = keccak256(abi.encodePacked(IcNumber));
        return publicInfoRegistry[useraddress].IcHash == IcHash;
    }

}