package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.ExtraexamMapper;
import com.heitian.ssm.model.Extraexam;
import com.heitian.ssm.service.ExtraExamService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Ljy on 2017/7/6.
 */
@Service
public class ExtraExamServiceImpl implements ExtraExamService{


    @Resource
    private ExtraexamMapper extraexamMapper;
    public List<Extraexam> showAllExtraExam() {
        return extraexamMapper.showAllExtraExam();
    }

    public void addExtraExam(String exam_id, String exam_name, String exam_time, String exam_address, String admin_id, Float exam_cost) {
        extraexamMapper.addExtraExam(exam_id,exam_name,exam_time,exam_address,admin_id,exam_cost);
    }

    public List<Extraexam> getAllNotSelectExtraExam(String stu_id) {
        return extraexamMapper.getAllNotSelectExtraExam(stu_id);
    }
}
