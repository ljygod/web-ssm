package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.StudentCourseMapper;
import com.heitian.ssm.service.StudentCourseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Ljy on 2017/7/7.
 */
@Service
public class StudentCourseServiceImpl implements StudentCourseService{

    @Resource
    private StudentCourseMapper studentCourseMapper;
    public void addStudentCourse(String stu_id, String course_id) {
        studentCourseMapper.addStudentCourse(stu_id, course_id);
    }

    public void delStudentCourse(String stu_id, String course_id) {
        studentCourseMapper.delStudentCourse(stu_id, course_id);
    }
}
