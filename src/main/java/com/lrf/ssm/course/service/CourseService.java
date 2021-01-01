package com.lrf.ssm.course.service;

import com.lrf.ssm.course.model.Course;

import java.util.List;

public interface CourseService {
    public void addCourse(Course course);

    public void deleteCourse(int courseId);

    public void updateCourse(Course course);

    public Course findCourseById(int courseId);

    public List<Course> findAllCourse();
}
