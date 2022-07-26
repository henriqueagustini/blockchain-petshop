pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    //Função para registrar a adoção do pet
    function adopt(uint256 petId) public returns (uint256) {
        adopters[petId] = msg.sender;

        return petId;
    }

    //Função para obter a lista de usuários adotante de petId
    function getAdopters() public returns (address[16] memory) {
        return adopters;
    }
}
