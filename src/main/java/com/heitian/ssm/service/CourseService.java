package com.heitian.ssm.service;


import com.heitian.ssm.model.Course;

import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
public interface CourseService {
    List<Course> getAllCourse(String stu_id);

    List<Course> getCourseByTeacherId(String teacher_id);

    void addCoure(String course_id, String course_name, Float course_credit, Integer course_time, String teacher_id);

    List<Course> allCourse();

    List<Course> allNotSelectCourse(String stu_id);
}
