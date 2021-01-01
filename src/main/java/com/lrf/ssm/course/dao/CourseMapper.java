package com.lrf.ssm.course.dao;

import com.lrf.ssm.course.model.Course;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public void addCourse(Course course);

    public void deleteCourse(int courseId);

    public void updateCourse(Course course);

    public Course findCourseById(int courseId);

    public List<Course> findAllCourse();
}
