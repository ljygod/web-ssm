package com.heitian.ssm.service;

import com.heitian.ssm.model.Grade;

import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */

public interface GradeService {
    List<Grade> getAllGrade(String stu_id);

    List<Grade> getSubjectGrade(String course_name);

    void updateGrade(String stu_id, String course_id, Float grade);
}
