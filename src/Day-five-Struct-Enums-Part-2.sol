// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Day_Five_Struct_Enums_Part_2 {
    struct Student {
        string name;
        uint256 age;
        address wallet;
    }

    Student public student;

    function setStudent(
        string memory _name,
        uint256 _age,
        address _wallet
    ) public {
        student = Student(_name, _age, _wallet);
    }

    function getStudent()
        public
        view
        returns (string memory, uint256, address)
    {
        return (student.name, student.age, student.wallet);
    }

    enum OrderStatus {
        Pending,
        Shipped,
        Delivered,
        Canceled
    }

    OrderStatus public status;

    function setOrderStatus(OrderStatus _status) public {
        status = _status;
    }

    function getOrderStatus() public view returns (OrderStatus) {
        return status;
    }
}

/* 

        --- Struct ---

A struct is a coustom data type that groups multiple related variables into a single unit. It is useful when dealing with complex data stuctures.

        --- Enums ---

An enum(short for enumuration) is a user-defined type that represents a set of predefined contstat valuess.


*/
