package com.heitian.ssm.controller;

import com.heitian.ssm.model.Extraexam;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.EnrollService;
import com.heitian.ssm.service.ExtraExamService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Ljy on 2017/7/7.
 */
@Controller
@RequestMapping("/enroll")
public class EnrollController {

    private Logger log = Logger.getLogger(ExtraExamController.class);

    @Resource
    private EnrollService enrollService;
    @Resource
    private ExtraExamService extraExamService;

    @RequestMapping("/addExtraExam")
    public String addExtraExam(Model model, @RequestParam("extraexam_id")String extraexam_id, HttpServletRequest request){
        log.info("考试报名");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        enrollService.addExtraExam(stu_id, extraexam_id);
        log.info(stu_id);
        log.info(extraexam_id);
        List<Extraexam> extraExamList = extraExamService.getAllNotSelectExtraExam(stu_id);
        model.addAttribute("examExtraList", extraExamList);
        return "student/showAllNotSelectExtraExam";
    }

    @RequestMapping("/getAllEnrollExam")
    public String getAllErollExam(Model model, HttpServletRequest request){
        log.info("已报名考试");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        List<Extraexam> extraexamList = enrollService.getAllErollExam(stu_id);
        model.addAttribute("examExtraList", extraexamList);
        return "student/showAllEnrollExam";
    }
}
