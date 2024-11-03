// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint256 private favoriteNumber; // State variable stored in storage
    uint256[] public favoriteNumbers; // Dynamic array to store multiple favorite numbers
    uint256 public neverAFavoriteNumber; // State variable stored in storage


    mapping(string => uint256) public nameToFavoriteNumber;

    event NumberUpdated(uint256 newNumber);

    // Struct to store a person’s name and their favorite number
    struct Person {
        string name; // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    Person[] public people; // Array of Person structs to store multiple people's data

    // Enum to manage contract states (Active or Inactive)
    enum ContractState {
        Active, // State representing an active contract
        Inactive // State representing an inactive contract
    }

    ContractState public state; // State variable to store the current contract state

    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        emit NumberUpdated(_favoriteNumber);
    }

    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    function isGreaterThan(uint256 _compareValue) public view returns(bool) {
        if (favoriteNumber > _compareValue) {
            return true;
        } else {
            return false;
        }
    }

    function sumToFavoriteNumber() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= favoriteNumber; i++) {
            sum += i;
        }
        return sum;
    }

    function internalFunction() internal pure returns (string memory) {
        return "I am learing solidity";
    }

    function callInternalFunction() public pure returns (string memory) {
        return internalFunction();
    }

    function externalFunction() external pure returns (string memory) {
        return "This function is an external function";
    }

    function testExternalFunction() public view returns (string memory) {
        return this.externalFunction();
    }

    function addFavoriteNumber(uint256 _number) public {
        favoriteNumbers.push(_number);
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function activateContract() public {
        state = ContractState.Active;
    }

    function deactivateContract() public {
        state = ContractState.Inactive;
    }

    function isActive() public view returns (bool) {
        return state == ContractState.Active;
    }


    // Function that uses a memory variable
    function updateUsername(string memory _newName) public pure returns(string memory) {
        // retrieves the new number from memory and adds 10 to it.
        _newName = "kusi";
        return _newName;
    }

    // Function that uses calldata variable
    function greetUser(string calldata _username) public pure returns (string memory) {
        string memory sayHello = string(abi.encodePacked("Hello ", _username));
        return sayHello;
    }

}