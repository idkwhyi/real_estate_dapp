// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract RealEstate {
    // State Variable
    struct Property {
        uint256 productId;
        address owner;
        uint256 price;
        string propertyTitle;
        string category;
        string images;
        string propertyAddress;
        string description;
        address[] reviewers;
        string[] reviews;
    }

    // Mapping
    mapping(uint256 => Property) private properties;
    uint256 public propertyIndex;

    //Events
    event PropertyListed(
        uint256 indexed id,
        address indexed owner,
        uint256 price
    );
    event PropertySold(
        uint256 indexed id,
        address indexed oldOnwer,
        address indexed newOwner,
        uint256 price
    );
    event PropertyResold(
        uint256 indexed id,
        address indexed oldOnwer,
        addressed indexed newOwner,
        uint256 price
    );

    // Review Section
    struct Review {
        address reviewer;
        uint256 productId;
        uint256 rating;
        string comment;
        uint256 likes;
    }


    struct Product{
        uint256 productId;
        uint256 totalRating;
        uint256 numReviews;
    }

    mapping(uint256 => Review[]) private reviews;
    mapping(address => uint256[]) private userReviews;
    mapping(uint256 => Product) private products;

    uint256 public reviewsCounter;

    event ReviewAdded(uint256 indexed productId, address indexed reviewer, uint256 rating, string comment);
    event ReviewLiked(uint256 indexed productId, address indexed reviewIndex, address indexed liker, uint256 likes);

    // Function in Contract
    function listProperty() external returns (uint256) {}

    function updateProperty() external returns (uint256) {}

    function buyProperty() external payable {}

    function getAllProperties() public view returns (Property[] memory) {}

    function getProperty() external view returns () {}

    function getUserProperties() external view returns (Property[] memory) {}

    // Reviews function
    function addReview() external {}

    function getProductReviews() external view returns (Review[] memory) {}

    function getUserReviews() external view returns (Review[] memory) {}

    function likeReview() external {}

    function getHighestRatedProduct() external view returns (uint256) {}

    function testing() {
        
    }
}
