package com.lrf.ssm.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class ThirdController {
    @RequestMapping("/thirdControllerAction1")
    public String firstMethod(Model model) throws Exception{
        model.addAttribute("msg","这是ThirdController的第一个方法");
        return "/jsp/Secondfirst";
    }
    @RequestMapping("/thirdControllerAction2")
    public String secondMethod(Model model) throws Exception{
        model.addAttribute("msg","这是ThirdController的第二个方法");
        return "/jsp/Secondfirst";
    }
}
