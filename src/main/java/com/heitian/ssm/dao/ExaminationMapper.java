package com.heitian.ssm.dao;

import com.heitian.ssm.model.Examination;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExaminationMapper {

    List<Examination> getAllExam();

    void addExam(@Param("exam_id") String exam_id, @Param("exam_name") String exam_name, @Param("exam_time") String exam_time,
                 @Param("exam_address") String exam_address, @Param("admin_id") String admin_id, @Param("course_id") String course_id);

    List<Examination> getAllStudentExam(@Param("stu_id")String stu_id);
}