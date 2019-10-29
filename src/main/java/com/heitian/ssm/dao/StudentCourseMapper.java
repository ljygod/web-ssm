package com.heitian.ssm.dao;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentCourseMapper {


    void addStudentCourse(@Param("stu_id")String stu_id, @Param("course_id")String course_id);

    void delStudentCourse(@Param("stu_id")String stu_id, @Param("course_id")String course_id);
}