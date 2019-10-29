package com.heitian.ssm.model;

import java.util.Date;

public class Student {

    private String stu_Id;
    private String stu_Name;
    private String stu_Sex;
    private Byte stu_Age;
    private String stu_Nation;
    private Date stu_Birthday;
    private String stu_Email;
    private String stu_Phone;
    private String class_Name;

    public String getStu_Id() {
        return stu_Id;
    }

    public void setStu_Id(String stu_Id) {
        this.stu_Id = stu_Id;
    }

    public String getStu_Name() {
        return stu_Name;
    }

    public void setStu_Name(String stu_Name) {
        this.stu_Name = stu_Name;
    }

    public String getStu_Sex() {
        return stu_Sex;
    }

    public void setStu_Sex(String stu_Sex) {
        this.stu_Sex = stu_Sex;
    }

    public Byte getStu_Age() {
        return stu_Age;
    }

    public void setStu_Age(Byte stu_Age) {
        this.stu_Age = stu_Age;
    }

    public String getStu_Nation() {
        return stu_Nation;
    }

    public void setStu_Nation(String stu_Nation) {
        this.stu_Nation = stu_Nation;
    }

    public Date getStu_Birthday() {
        return stu_Birthday;
    }

    public void setStu_Birthday(Date stu_Birthday) {
        this.stu_Birthday = stu_Birthday;
    }

    public String getStu_Email() {
        return stu_Email;
    }

    public void setStu_Email(String stu_Email) {
        this.stu_Email = stu_Email;
    }

    public String getStu_Phone() {
        return stu_Phone;
    }

    public void setStu_Phone(String stu_Phone) {
        this.stu_Phone = stu_Phone;
    }

    public String getClass_Name() {
        return class_Name;
    }

    public void setClass_Name(String class_Name) {
        this.class_Name = class_Name;
    }
}