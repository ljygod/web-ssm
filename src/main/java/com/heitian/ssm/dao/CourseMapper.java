package com.heitian.ssm.dao;

import com.heitian.ssm.model.Course;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper {

    List<Course> getAllCourse(@Param("stu_id") String stu_id);

    List<Course> getCourseByTeacherId(@Param("teacher_id") String teacher_id);

    void addCourse(@Param("course_id") String course_id,@Param("course_name") String course_name,@Param("course_credit") Float course_credit,
                   @Param("course_time") Integer course_time,@Param("teacher_id") String teacher_id);

    List<Course> allCourse();

    List<Course> allNotSelectCourse(@Param("stu_id")String stu_id);


}