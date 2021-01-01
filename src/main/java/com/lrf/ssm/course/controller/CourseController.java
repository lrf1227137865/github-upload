package com.lrf.ssm.course.controller;

import com.lrf.ssm.course.model.Course;
import com.lrf.ssm.course.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @RequestMapping("/courselist")
    public String courseList(Model model){
        List<Course> list = courseService.findAllCourse();
        model.addAttribute("courselist",list);
        return "/jsp/course/course_list";
    }

    @RequestMapping("/tocourseadd")
    public String toCourseAdd(Model model)
    {
        return "/jsp/course/course_add";
    }

    @RequestMapping("courseadd")
    public String courseAdd(Course course, Model model){
        courseService.addCourse(course);
        return "redirect:courselist";
    }

    @RequestMapping("/coursedelete")
    public String courseDelete(int courseId,Model model){
        courseService.deleteCourse(courseId);
        return "redirect:courselist";
    }

    @RequestMapping("/tocourseedit")
    public String toCourseEdit(int courseId,Model model){
        Course course = courseService.findCourseById(courseId);
        model.addAttribute("course",course);
        return "/jsp/course/course_edit";
    }

    @RequestMapping("/courseedit")
    public String courseEdit(Course course, Model model){
        //调用服务接口,更新数据
         courseService.updateCourse(course);
         //重定向到列表url
         return "redirect:courselist";
         }

}
