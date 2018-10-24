pragma solidity ^0.4.24;

contract UsersContracts {

    struct User {
        string name;
        string surname;
    }

    mapping(address => User) private users;
}

function join (string name, string surname)