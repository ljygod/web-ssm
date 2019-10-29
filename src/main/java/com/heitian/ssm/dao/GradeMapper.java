package com.heitian.ssm.dao;

import com.heitian.ssm.model.Grade;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
@Repository
public interface GradeMapper {

    List<Grade> getAllGrade(@Param("stu_id") String stu_id);

    List<Grade> getSubjectGrade(@Param("course_name") String course_name);

    void updateGrade(@Param("stu_id") String stu_id, @Param("course_id") String course_id ,@Param("grade") Float grade);
}
