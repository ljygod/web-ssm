package com.heitian.ssm.service;

import com.heitian.ssm.model.Extraexam;

import java.util.List;

/**
 * Created by Ljy on 2017/7/6.
 */
public interface ExtraExamService {

    List<Extraexam> showAllExtraExam();

    void addExtraExam(String exam_id, String exam_name, String exam_time,
                      String exam_address, String admin_id, Float exam_cost);

    List<Extraexam> getAllNotSelectExtraExam(String stu_id);


}
