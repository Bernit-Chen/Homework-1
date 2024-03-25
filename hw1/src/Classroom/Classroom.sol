// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool check_v1=true;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(check_v1==true) {
            check_v1=false;
            return 1000;
        }
        else return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        bool check_v2=IClassroomV2(msg.sender).isEnrolled();
        if(check_v2==false) return 1000;
        else return 123;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()>7000) return 1000;
        else return 123;
    }
}
