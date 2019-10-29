package com.heitian.ssm.service.impl;

import com.heitian.ssm.dao.GradeMapper;
import com.heitian.ssm.model.Grade;
import com.heitian.ssm.service.GradeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */

@Service
@Transactional(rollbackOn=Exception.class)
public class GradeServiceImpl implements GradeService{

    @Resource
    private GradeMapper gradeMapper;
    public List<Grade> getAllGrade(String stu_id){
        return gradeMapper.getAllGrade(stu_id);
    }

    public List<Grade> getSubjectGrade(String course_name) {
        return gradeMapper.getSubjectGrade(course_name);
    }

    public void updateGrade(String stu_id, String course_id, Float grade) {
        gradeMapper.updateGrade(stu_id, course_id , grade);
    }
}
