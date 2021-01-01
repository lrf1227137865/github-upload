package com.lrf.ssm.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {
    @RequestMapping("/firstController")
    public String hello(Model model){
        model.addAttribute("msg","第一个Controller");
        return "/jsp/first";
    }

}
