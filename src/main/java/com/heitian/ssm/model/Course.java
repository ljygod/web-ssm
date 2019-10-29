package com.heitian.ssm.model;

public class Course {

    private String course_Id;
    private String course_Name;
    private Float course_Credit;
    private Integer course_Time;
    private String teacher_Name;

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

    public Float getCourse_Credit() {
        return course_Credit;
    }

    public void setCourse_Credit(Float course_Credit) {
        this.course_Credit = course_Credit;
    }

    public Integer getCourse_Time() {
        return course_Time;
    }

    public void setCourse_Time(Integer course_Time) {
        this.course_Time = course_Time;
    }

    public String getTeacher_Name() {
        return teacher_Name;
    }

    public void setTeacher_Name(String teacher_Name) {
        this.teacher_Name = teacher_Name;
    }

}