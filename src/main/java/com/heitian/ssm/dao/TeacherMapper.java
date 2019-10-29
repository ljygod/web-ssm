package com.heitian.ssm.dao;

import com.heitian.ssm.model.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherMapper {

    Teacher selectTeacherById(@Param("teacher_id") String teacher_id);

    void updateTeacherMessage(@Param("teacher_phone") String teacher_phone, @Param("teacher_email")String teacher_email,
                              @Param("teacher_id")String teacher_id);

    List<Teacher>getAllTeacher();

    void addTeacher(@Param("teacher_id") String teacher_id,@Param("teacher_name")String teacher_name,@Param("teacher_sex")String teacher_sex,
                    @Param("teacher_age")int teacher_age,@Param("teacher_email")String teacher_email
            ,@Param("teacher_phone")String teacher_phone,@Param("teacher_position")String teacher_position,
                    @Param("major_id")String major_id,@Param("teacher_nation")String teacher_nation);
}