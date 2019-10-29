package com.heitian.ssm.dao;

import com.heitian.ssm.model.Extraexam;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EnrollMapper {

    void addExtraExam(@Param("stu_id")String stu_id, @Param("extraexam_id")String extraexam_id);

    List<Extraexam> getAllErollExam(@Param("stu_id")String stu_id);
}