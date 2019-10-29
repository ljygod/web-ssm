package com.heitian.ssm.service;

import com.heitian.ssm.model.Student;

import java.util.List;

/**
 * Created by Ljy on 2017/6/30.
 */
public interface StudentService {
    List<Student> getAllStudent();

    Student selectStudentById(String stu_id);

    void updateStudent(String stu_phone, String stu_email, String stu_id);

    List<Student> selectTeachStudent(String course_name, String teach_id);

    Student selectStudentByName(String stu_name);

    void addStudent(String stu_id, String stu_name, String stu_sex,
                    String stu_age, String stu_phone, String stu_email,
                    String stu_nation, String class_id);
}
