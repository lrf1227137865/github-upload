package com.lrf.ssm.course.model;



public class Course {
    private int courseId;
    private String courseTitle;//课程名称
    private String courseCode;//课程编号
    private String courseType;//课程结构:0--基础必修  1--专业必修  2--专业选修
    private String courseCredit;//学分
    private String courseHours;//学时
    private String term;
    private String courseDesc;

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCourseCredit() {
        return courseCredit;
    }

    public void setCourseCredit(String courseCredit) {
        this.courseCredit = courseCredit;
    }

    public String getCourseHours() {
        return courseHours;
    }

    public void setCourseHours(String courseHours) {
        this.courseHours = courseHours;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseTitle='" + courseTitle + '\'' +
                ", courseCode='" + courseCode + '\'' +
                ", courseType='" + courseType + '\'' +
                ", courseCredit='" + courseCredit + '\'' +
                ", courseHours='" + courseHours + '\'' +
                ", term='" + term + '\'' +
                ", courseDesc='" + courseDesc + '\'' +
                '}';
    }
}
