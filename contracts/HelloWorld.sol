pragma solidity ^0.4.21;

contract HelloWorld {
  // public variables automatically have a getter generated
  // state variables are automatically stored in storage
  address public owner;
  // privagte variables do not have an automatic getter generated
  string private name; 
  // Even if you don't specify storage, state variables are automaticalluy stored in storage
  uint private number;

  // Constructor
  function HelloWorld(string _name, uint _number) public {
    owner = msg.sender;
    name = _name;
    number = _number;
  }

  function getHelloWorld() public pure returns (string) {
    return 'Hello World';
  }

  // instead, to access private variables, you can reference them inside public functions
  function getName() public view returns (string) {
    // You do not need to prefix state variables with this
    return name;
  }

  // pure functions do not read or modify state
  function getString(string _string) public pure returns (string) { 
    return _string;
  }

  function getNumber() public view returns (uint) {
    return number;
  }

  // adding the view modifier specifies that a function will not modify state, but can read from state
  function predictNextNumber() public view returns (uint) {
    // Not mandatory, but you can still reference state variables with this
    uint predictedNumber = number + 1;
    return predictedNumber;
  }

  // This function is neither view nor pure, since it modifies a state variable
  function incrementNumber() public {
    number = number + 1;
  }
}
