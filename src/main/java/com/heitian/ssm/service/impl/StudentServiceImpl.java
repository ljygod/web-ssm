package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.StudentMapper;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Ljy on 2017/6/30.
 */
@Service
@Transactional(rollbackOn = Exception.class)
public class StudentServiceImpl implements StudentService{
    @Resource
    private StudentMapper studentMapper;
    public List<Student> getAllStudent() {
        return studentMapper.getAllStudent();
    }

    public Student selectStudentById(String stu_id) {
        return studentMapper.selectStudentById(stu_id);
    }

    public void updateStudent(String stu_phone, String stu_email, String stu_id) {
        studentMapper.UpdateStudent(stu_phone, stu_email, stu_id);
    }

    public List<Student> selectTeachStudent(String course_name,String teacher_id) {
        return studentMapper.selectTeachStudent(course_name, teacher_id);
    }

    public Student selectStudentByName(String stu_name) {
        return studentMapper.selectStudentByName(stu_name);
    }

    public void addStudent(String stu_id, String stu_name, String stu_sex, String stu_age, String stu_phone, String stu_email, String stu_nation, String class_id) {
        studentMapper.addStudent(stu_id,stu_name,stu_sex,stu_age,stu_phone,stu_email,stu_nation,class_id);
    }
}
