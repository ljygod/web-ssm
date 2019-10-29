package com.heitian.ssm.dao;

import com.heitian.ssm.model.Extraexam;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExtraexamMapper {

    List<Extraexam> showAllExtraExam();

    void addExtraExam(@Param("exam_id") String exam_id, @Param("exam_name") String exam_name, @Param("exam_time") String exam_time,
                      @Param("exam_address") String exam_address, @Param("admin_id") String admin_id, @Param("exam_cost") Float exam_cost);

    List<Extraexam> getAllNotSelectExtraExam(@Param("stu_id")String stu_id);
}