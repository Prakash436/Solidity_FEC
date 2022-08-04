pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string favoriteAnimal;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public FavoriteNumber;
    mapping(string => string) public FavoriteAnimal;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(
        string memory _name,
        string memory _favoriteAnimal,
        uint256 _favoriteNumber
    ) public {
        people.push(People(_favoriteNumber, _favoriteAnimal, _name));
        FavoriteNumber[_name] = _favoriteNumber;
        FavoriteAnimal[_name] = _favoriteAnimal;
    }
}
