package com.heitian.ssm.controller;

import com.heitian.ssm.model.Student;
import com.heitian.ssm.model.Teacher;
import com.heitian.ssm.service.StudentService;
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
 * Created by Ljy on 2017/6/30.
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    private Logger logger = Logger.getLogger(StudentService.class);
    @Resource
    private StudentService studentService;

    @RequestMapping("/showAllStudent")
    public String getAllStudent(HttpServletRequest request, Model model) {
        logger.info("显示所有学生信息");
        List<Student> listStudent = studentService.getAllStudent();
        model.addAttribute("listStudent", listStudent);
        return "teacher/studentList";
    }

    @RequestMapping("/selectStudentById")
    public String selectStudentById(HttpServletRequest request, Model model, @Param("stu_id") String stu_id) {
        logger.info("使用ID查询学生信息");
        Student student = studentService.selectStudentById(stu_id);
        model.addAttribute("student", student);
        return "student/showStudentMessage";
    }

    @RequestMapping("/updateStudentMessage")
    public String updateStudentMessage(HttpServletRequest request, Model model, @Param("stu_email") String stu_email, @Param("stu_id") String stu_id
            , @Param("stu_phone") String stu_phone) {
        logger.info("更新学生信息");
        logger.info(stu_id);
        logger.info(stu_phone);
        logger.info(stu_email);
        studentService.updateStudent(stu_phone, stu_email, stu_id);
        Student student = studentService.selectStudentById(stu_id);
        model.addAttribute("student", student);
        return "student/showStudentMessage";
    }

    @RequestMapping("/selectTeachStudent")
    public String selectTeachStudent(@RequestParam(value = "course_name", required = false) String course_name, HttpServletRequest request, Model model) {
        logger.info("查询老师教授课程的所有学生");
        logger.info(course_name);
        Teacher teacher = (Teacher) request.getSession().getAttribute("teacher");
        String teacher_id = teacher.getTeacher_Id();
        logger.info(teacher_id);
        List<Student> studentList = studentService.selectTeachStudent(course_name, teacher_id);
        model.addAttribute("studentList", studentList);
        return "teacher/selectTeachStudent";
    }

    @RequestMapping("/selectStudentByName")
    public String selectStudentByName(HttpServletRequest request, @RequestParam("stu_name") String stu_name, Model model) {
        logger.info("通过姓名查看学生信息");
        Student student = studentService.selectStudentByName(stu_name);
        model.addAttribute("student", student);
        return "teacher/selectStudentMessage";
    }
}
