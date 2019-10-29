package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.TeacherMapper;
import com.heitian.ssm.model.Teacher;
import com.heitian.ssm.service.TeacherService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
@Service
@Transactional(rollbackOn = Exception.class)
public class TeacherServiceImpl implements TeacherService{
    @Resource
    private TeacherMapper teacherMapper;
    public Teacher selectTeacherById(String teacher_id) {
        return teacherMapper.selectTeacherById(teacher_id);
    }

    public void updateTeacherMessage(String teacher_phone, String teacher_email, String teacher_id) {
        teacherMapper.updateTeacherMessage(teacher_phone, teacher_email, teacher_id);
    }

    public List<Teacher> getAllTeacher() {
        return teacherMapper.getAllTeacher();
    }

    public void addTeacher(String teacher_id, String teacher_name, String teacher_sex, int teacher_age, String teacher_email, String teacher_phone, String teacher_position, String major_id, String teacher_nation) {
        teacherMapper.addTeacher(teacher_id,teacher_name,teacher_sex,teacher_age,teacher_email,teacher_phone,
                teacher_position,major_id,teacher_nation);
    }


}
