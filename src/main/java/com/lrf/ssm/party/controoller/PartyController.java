package com.lrf.ssm.party.controoller;

import com.lrf.ssm.party.model.Party;
import com.lrf.ssm.party.service.PartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PartyController {

    @Autowired
    private PartyService partyService;

    @RequestMapping("/partylist")
    public String partyList(Model model){
        List<Party> list = partyService.findAllParty();
        model.addAttribute("partylist",list);
        return "/jsp/party/party_list";
    }

    @RequestMapping("/topartyadd")
    public String toPartyAdd(Model model){
        return "/jsp/party/party_add";
    }

    @RequestMapping("partyadd")
    public String partyAdd(Party party, Model model){
        partyService.addParty(party);
        return "redirect:partylist";
    }

    @RequestMapping("/partydelete")
    public String partyDelete(int partyId,Model model){
        partyService.deleteParty(partyId);
        return "redirect:partylist";
    }

    @RequestMapping("/topartyedit")
    public String toPartyEdit(int partyId,Model model){
        Party party = partyService.findPartyById(partyId);
        model.addAttribute("party",party);
        return "/jsp/party/party_edit";
    }

    @RequestMapping("/partyedit")
    public String partyEdit(Party party,Model model){
        partyService.updateParty(party);
        return "redirect:partylist";
    }

}
