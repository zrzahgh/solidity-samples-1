/**
 * Copyright (C) GameOn, 2025.
 * All rights reserved.
 * Zahra Haghpanah; zh@gameon.li
 */

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage
{
	uint256 _data;
	bool _checkValidity = false;

	function setCheckValidity(bool value) public 
	{
		_checkValidity = value;
	}

	function getCheckValidity() public view returns (bool)
	{
		return _checkValidity;
	}

	function getData() public view returns (uint256)
	{
		return _data;
	}

	function store(uint256 value) public
	{
		if (_checkValidity)
		{
			if (value > _data)
			{
				_data = value;
			}

			return;
		}

		_data = value;
	}

	struct Person
	{
	    uint256 favoriteNumber;
	    string name;
	}

	

	// // uint256[] public anArray;
	// Person[] public listOfPeople;

	// mapping(string => uint256) public nameToFavoriteNumber;

	// function addPerson(string memory _name, uint256 _favoriteNumber) public {
	//     listOfPeople.push(Person(_favoriteNumber, _name));
	//     nameToFavoriteNumber[_name] = _favoriteNumber;
	// }
}
