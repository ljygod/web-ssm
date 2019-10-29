package com.heitian.ssm.controller;

import com.heitian.ssm.model.Grade;
import com.heitian.ssm.service.GradeService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */
@Controller
@RequestMapping("/grade")
public class GradeController {

    Logger log = Logger.getLogger(GradeController.class);
    @Resource
    private GradeService gradeService;

    @RequestMapping("/getAllGrade")
    public String getAllGrade(HttpServletRequest request, Model model, @Param("stu_id") String stu_id) {
        log.info("显示学生所有成绩信息");
        List<Grade> listGrade = gradeService.getAllGrade(stu_id);
        model.addAttribute("listGrade", listGrade);
        return "student/showStudentGrade";
    }

    @RequestMapping("/selectSubjectGrade")
    public String selectSubjectGrade(HttpServletRequest request, @RequestParam("course_name")String course_name, Model model){
        log.info("查询单科成绩");
        List<Grade> gradeList = gradeService.getSubjectGrade(course_name);
        model.addAttribute("gradeList", gradeList);
        return "teacher/selectSubject";
    }

    @RequestMapping("/updateGrade")
    public String updateGrade(Model model , @RequestParam("stu_id")String stu_id, @Param("course_id")String course_id ,@RequestParam("grade")Float grade){
        log.info("录入成绩");
        log.info(stu_id);
        log.info(course_id);
        log.info(grade);
        gradeService.updateGrade(stu_id, course_id, grade);

        return "teacher/updateGrade";
    }

}
