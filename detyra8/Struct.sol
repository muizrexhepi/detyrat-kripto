// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct {
    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age));
    }

    function changePersonName(uint index, string memory newName) public {
        Person storage p = people[index];
        p.name = newName;
    }

    function getPerson(uint index) public view returns (Person memory) {
        return people[index];
    }
}
