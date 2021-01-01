package com.lrf.ssm.controller;
import com.lrf.ssm.book.model.Author;
import com.lrf.ssm.book.model.AuthorDB;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
public class AuthorController {
    @RequestMapping("/authorlist")
    public String authorlist(Model model) throws ParseException {
        List<Author> list = new ArrayList<>(AuthorDB.authorMap.values());
        model.addAttribute("authorlist", list);
        return "/jsp/book/author_list";
    }
    //跳转到添加图书⻚⾯
    @RequestMapping("/toauthoradd")
    public String toAuthorAdd(Model model){
        return "/jsp/book/author_add";
    }
    //添加图书
    @RequestMapping("/authoradd")
    public String authorAdd(Author author, Model model){
        author.setId((int)new Random().nextDouble()*1000);
        AuthorDB.authorMap.put(author.getId(),author);
        return "redirect:authorlist";
    }
}