// UserInformation.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract UserInformation {
    struct UserInfo {
        string username;
        string github;
        string linkedin;
    }

    mapping(address => UserInfo) public users;

    function setUserInfo(string memory username, string memory github, string memory linkedin) public {
        UserInfo storage userInfo = users[msg.sender];
        userInfo.username = username;
        userInfo.github = github;
        userInfo.linkedin = linkedin;
    }
function getUserInfo() public view returns (string memory username, string memory github, string memory linkedin) {
    UserInfo storage userInfo = users[msg.sender];
    return (userInfo.username, userInfo.github, userInfo.linkedin);
}

}
