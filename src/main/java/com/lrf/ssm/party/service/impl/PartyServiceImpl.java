package com.lrf.ssm.party.service.impl;

import com.lrf.ssm.party.dao.PartyMapper;
import com.lrf.ssm.party.model.Party;
import com.lrf.ssm.party.service.PartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//实现类
@Service
public class PartyServiceImpl implements PartyService {

    @Autowired
    private PartyMapper mapper;

    @Override
    public void addParty(Party party) {
        mapper.addParty(party);
    }

    @Override
    public void deleteParty(int partyId) {
        mapper.deleteParty(partyId);
    }

    @Override
    public void updateParty(Party party) {
        mapper.updateParty(party);
    }

    @Override
    public Party findPartyById(int partyId) {
        mapper.findPartyById(partyId);
        return null;
    }

    @Override
    public List<Party> findAllParty() {
        return mapper.findAllParty();
    }
}
