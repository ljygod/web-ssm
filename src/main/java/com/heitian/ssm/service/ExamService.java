package com.heitian.ssm.service;

import com.heitian.ssm.model.Examination;

import java.util.List;

/**
 * Created by Ljy on 2017/7/6.
 */
public interface ExamService {

    List<Examination>getAllExam();

    void addExam(String exam_id, String exam_name, String exam_time,
                 String exam_address, String admin_id, String course_id);

    List<Examination> getAllStudentExam(String stu_id);
}
