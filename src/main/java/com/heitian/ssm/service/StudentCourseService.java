package com.heitian.ssm.service;

/**
 * Created by Ljy on 2017/7/7.
 */
public interface StudentCourseService {

    void addStudentCourse(String stu_id, String course_id);

    void delStudentCourse(String stu_id, String course_id);
}
