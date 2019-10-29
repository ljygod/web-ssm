package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.CourseMapper;
import com.heitian.ssm.model.Course;
import com.heitian.ssm.service.CourseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
@Service
@Transactional(rollbackOn=Exception.class)
public class CourseServiceImpl implements CourseService {

    @Resource
    private CourseMapper courseMapper;
    public List<Course> getAllCourse(String stu_id) {
        return courseMapper.getAllCourse(stu_id);
    }

    public List<Course> getCourseByTeacherId(String teacher_id) {
        return courseMapper.getCourseByTeacherId(teacher_id);
    }

    public void addCoure(String course_id, String course_name, Float course_credit, Integer course_time, String teacher_id) {
        courseMapper.addCourse(course_id,course_name,course_credit,course_time,teacher_id);
    }

    public List<Course> allCourse() {
        return courseMapper.allCourse();
    }

    public List<Course> allNotSelectCourse(String stu_id) {
        return courseMapper.allNotSelectCourse(stu_id);
    }
}
