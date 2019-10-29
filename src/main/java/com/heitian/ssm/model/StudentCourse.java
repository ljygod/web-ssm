package com.heitian.ssm.model;

public class StudentCourse {

    private String stu_Id;

    private String course_Id;

    private Float grade;

    public String getStu_Id() {
        return stu_Id;
    }

    public void setStu_Id(String stu_Id) {
        this.stu_Id = stu_Id;
    }

    public String getCourse_Id() {
        return course_Id;
    }

    public void setCourse_Id(String course_Id) {
        this.course_Id = course_Id;
    }

    public Float getGrade() {
        return grade;
    }

    public void setGrade(Float grade) {
        this.grade = grade;
    }
}