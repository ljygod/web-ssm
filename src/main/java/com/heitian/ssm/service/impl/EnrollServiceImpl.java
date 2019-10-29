package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.EnrollMapper;
import com.heitian.ssm.model.Extraexam;
import com.heitian.ssm.service.EnrollService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Ljy on 2017/7/7.
 */
@Service
public class EnrollServiceImpl implements EnrollService{

    @Resource
    private EnrollMapper enrollMapper;
    public void addExtraExam(String stu_id, String extraexam_id) {
        enrollMapper.addExtraExam(stu_id, extraexam_id);
    }

    public List<Extraexam> getAllErollExam(String stu_id) {
        return enrollMapper.getAllErollExam(stu_id);
    }
}
