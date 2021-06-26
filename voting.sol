// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract voting{
    
    struct voter{
        uint vote;
        bool voting;
    }
    struct candidate{
        string name;
        uint CandidateNumber;
        uint totallvote;
    }

    mapping(address=>voter)voters;
    mapping(uint=>candidate)Candidats;
    
    uint candidatecount;
    address owner;
    
    constructor(){
        owner=msg.sender;
    }
    
    function setCandidate(string memory _name) public returns(bool success) {
        if(msg.sender==owner){
        candidatecount++;
        Candidats[candidatecount]=candidate(_name,candidatecount,0);
        return true;
    }
    }
    
    function votingDay(uint _CandidateNumber)public returns(string memory){
        require(_CandidateNumber>=candidatecount);
        require(voters[msg.sender].voting=false);
        Candidats[_CandidateNumber].totallvote++;
        voters[msg.sender].voting=true;
        return "good";
    }
    
    function ShowWinner()public view returns(string memory){
        uint winnerID;
        
    }
}
