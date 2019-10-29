package com.heitian.ssm.model;

public class Examination {

    private String exam_Id;

    private String exam_Name;

    private String exam_Time;

    private String exam_Address;

    private String admin_Name;

    private String course_Name;

    public String getExam_Id() {
        return exam_Id;
    }

    public void setExam_Id(String exam_Id) {
        this.exam_Id = exam_Id;
    }

    public String getExam_Name() {
        return exam_Name;
    }

    public void setExam_Name(String exam_Name) {
        this.exam_Name = exam_Name;
    }

    public String getExam_Time() {
        return exam_Time;
    }

    public void setExam_Time(String exam_Time) {
        this.exam_Time = exam_Time;
    }

    public String getExam_Address() {
        return exam_Address;
    }

    public void setExam_Address(String exam_Address) {
        this.exam_Address = exam_Address;
    }

    public String getAdmin_Name() {
        return admin_Name;
    }

    public void setAdmin_Name(String admin_Name) {
        this.admin_Name = admin_Name;
    }

    public String getCourse_Name() {
        return course_Name;
    }

    public void setCourse_Name(String course_Name) {
        this.course_Name = course_Name;
    }
}