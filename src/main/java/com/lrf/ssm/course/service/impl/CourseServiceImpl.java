package com.lrf.ssm.course.service.impl;

import com.lrf.ssm.course.dao.CourseMapper;
import com.lrf.ssm.course.model.Course;
import com.lrf.ssm.course.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper mapper;

    @Override
    public void addCourse(Course course) {
        mapper.addCourse(course);
    }

    @Override
    public void deleteCourse(int courseId) {
        mapper.deleteCourse(courseId);
    }

    @Override
    public void updateCourse(Course course){
        mapper.updateCourse(course);
    }

    @Override
    public Course findCourseById(int courseId) {
        return mapper.findCourseById(courseId);
    }

    @Override
    public List<Course> findAllCourse() {
        return mapper.findAllCourse();
    }
}
