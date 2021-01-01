package com.lrf.ssm.party.service;

import com.lrf.ssm.party.model.Party;

import java.util.List;

public interface PartyService {
    public void addParty(Party party);

    public void deleteParty(int partyId);

    public void updateParty(Party party);

    public Party findPartyById(int partyId);

    public List<Party> findAllParty();
}
