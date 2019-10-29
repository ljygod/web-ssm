package com.heitian.ssm.controller;

import com.heitian.ssm.model.Extraexam;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.ExtraExamService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Ljy on 2017/7/6.
 */
@Controller
@RequestMapping("/extraExam")
public class ExtraExamController {

    private Logger log = Logger.getLogger(ExtraExamController.class);

    @Resource
    private ExtraExamService extraExamService;

    @RequestMapping("/showAllExtraExam")
    public String showAllExtraExam(Model model){
        log.info("all extra exam");
        List<Extraexam>extraExamList = extraExamService.showAllExtraExam();
        model.addAttribute("extraExamList", extraExamList);
        return "admin/showAllExtraExam";
    }

    @RequestMapping("/addExam")
    public String addExam(@Param("exam_id") String exam_id, @Param("exam_name") String exam_name, @Param("exam_time") String exam_time,
                          @Param("exam_address") String exam_address, @Param("admin_id") String admin_id, @Param("exam_cost") Float exam_cost, Model model){
        log.info("add extra exam");
        extraExamService.addExtraExam(exam_id,exam_name,exam_time,exam_address,admin_id,exam_cost);
        List<Extraexam>extraExamList = extraExamService.showAllExtraExam();
        model.addAttribute("extraExamList", extraExamList);
        return "admin/showAllExtraExam";
    }

    @RequestMapping("showAllNotSelectExtraExam")
    public String showAllNotSelectExtraExam(Model model, HttpServletRequest request){
        log.info("所有未报名的额外考试");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        List<Extraexam>extraExamList = extraExamService.getAllNotSelectExtraExam(stu_id);
        model.addAttribute("examExtraList", extraExamList);
        return "student/showAllNotSelectExtraExam";
    }
}
