package com.heitian.ssm.dao;

import com.heitian.ssm.model.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMapper {

    List<Student> getAllStudent();

    Student selectStudentById(@Param("stu_id")String stu_id);
    void UpdateStudent(@Param("stu_phone") String stu_phone, @Param("stu_email")String stu_email, @Param("stu_id")String stu_id);

    List<Student>selectTeachStudent(@Param("course_name") String course_name, @Param("teacher_id") String teacher_id);

    Student selectStudentByName(@Param("stu_name")String stu_name);

    void addStudent(@Param("stu_id")String stu_id,@Param("stu_name")String stu_name,@Param("stu_sex")String stu_sex,
                    @Param("stu_age")String stu_age,@Param("stu_phone")String stu_phone,@Param("stu_email")String stu_email,
                    @Param("stu_nation")String stu_nation,@Param("class_id")String class_id);
}