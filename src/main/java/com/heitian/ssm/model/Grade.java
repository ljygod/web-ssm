package com.heitian.ssm.model;

/**
 * Created by Ljy on 2017/7/4.
 */
public class Grade {

    private String stu_Id;
    private String course_Id;
    private String course_Name;
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

    public String getCourse_Name() {
        return course_Name;
    }

    public void setCourse_Name(String course_Name) {
        this.course_Name = course_Name;
    }

    public Float getGrade() {
        return grade;
    }

    public void setGrade(Float grade) {
        this.grade = grade;
    }
}
