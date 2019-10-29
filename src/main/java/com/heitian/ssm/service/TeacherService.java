package com.heitian.ssm.service;

import com.heitian.ssm.model.Teacher;

import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
public interface TeacherService {
    Teacher selectTeacherById(String teacher_id);

    void updateTeacherMessage(String teacher_phone,String teacher_email, String teacher_id);

    List<Teacher>getAllTeacher();

    void addTeacher(String teacher_id,String teacher_name,String teacher_sex,int teacher_age,String teacher_email
            ,String teacher_phone,String teacher_position,String major_id,String teacher_nation);

}
