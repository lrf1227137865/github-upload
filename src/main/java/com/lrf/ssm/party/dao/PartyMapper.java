package com.lrf.ssm.party.dao;

import com.lrf.ssm.party.model.Party;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PartyMapper {

    public void addParty(Party party);

    public void deleteParty(int partyId);

    public void updateParty(Party party);

    public Party findPartyById(int partyId);

    public List<Party> findAllParty();
}
