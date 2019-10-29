package com.heitian.ssm.service;

import com.heitian.ssm.model.Extraexam;

import java.util.List;

/**
 * Created by Ljy on 2017/7/7.
 */
public interface EnrollService {

    void addExtraExam(String stu_id, String extraexam_id);

    List<Extraexam> getAllErollExam(String stu_id);
}
