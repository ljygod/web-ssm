package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.ExaminationMapper;
import com.heitian.ssm.model.Examination;
import com.heitian.ssm.service.ExamService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Ljy on 2017/7/6.
 */
@Service
public class ExamServiceImpl implements ExamService {

    @Resource
    private ExaminationMapper examinationMapper;
    public List<Examination> getAllExam() {
        return examinationMapper.getAllExam();
    }

    public void addExam(String exam_id, String exam_name, String exam_time,
                 String exam_address, String admin_id, String course_id){
        examinationMapper.addExam(exam_id,exam_name,exam_time,exam_address,admin_id,course_id);
    }

    public List<Examination> getAllStudentExam(String stu_id) {
        return examinationMapper.getAllStudentExam(stu_id);
    }
}
