package com.heitian.ssm.controller;

import com.heitian.ssm.model.Examination;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.ExamService;
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
@RequestMapping("/exam")
public class ExamController {

    private Logger log = Logger.getLogger(Examination.class);

    @Resource
    private ExamService examService;

    @RequestMapping("/showAllExam")
    public String getAllExam(Model model) {
        log.info("显示所有考试信息");
        List<Examination> examinationList = examService.getAllExam();
        model.addAttribute("examList", examinationList);
        return "admin/showAllExam";
    }

    @RequestMapping("/addExam")
    public String addExam(Model model, @Param("exam_id") String exam_id, @Param("exam_name") String exam_name, @Param("exam_time") String exam_time,
                          @Param("exam_address") String exam_address, @Param("admin_id") String admin_id, @Param("course_id") String course_id) {
        log.info("add exam");
        examService.addExam(exam_id,exam_name,exam_time,exam_address,admin_id,course_id);
        List<Examination> examinationList = examService.getAllExam();
        model.addAttribute("examList", examinationList);
        return "admin/showAllExam";
    }

    @RequestMapping("/getAllStudentExam")
    public String getAllStudentExam(HttpServletRequest request, Model model){
        log.info("得到所选课程的考试安排");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        List<Examination> examinationList = examService.getAllStudentExam(stu_id);
        model.addAttribute("examinationList", examinationList);
        return "student/showAllStudentExam";
    }
}
