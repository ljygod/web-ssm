package com.heitian.ssm.model;

public class Administrator {

    private String admin_Id;

    private String admin_Name;

    public String getAdmin_Id() {
        return admin_Id;
    }

    public void setAdmin_Id(String admin_Id) {
        this.admin_Id = admin_Id == null ? null : admin_Id.trim();
    }

    public String getAdmin_Name() {
        return admin_Name;
    }

    public void setAdmin_Name(String admin_Name) {
        this.admin_Name = admin_Name == null ? null : admin_Name.trim();
    }
}