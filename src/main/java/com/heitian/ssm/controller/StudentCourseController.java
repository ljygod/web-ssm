package com.heitian.ssm.controller;

import com.heitian.ssm.model.Course;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.CourseService;
import com.heitian.ssm.service.StudentCourseService;
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
@RequestMapping("/studentCourse")
public class StudentCourseController {

    private Logger log = Logger.getLogger(StudentController.class);

    @Resource
    private StudentCourseService studentCourseService;

    @Resource
    private CourseService courseService;

    @RequestMapping("/addStudentCourse")
    public String addStudentCourse(Model model, @RequestParam("course_id")String course_id, HttpServletRequest request){

        log.info("选课");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        studentCourseService.addStudentCourse(stu_id, course_id);
        List<Course> courseList = courseService.allNotSelectCourse(stu_id);
        model.addAttribute("courseList", courseList);
        return "student/showAllNotSelectCourse";
    }

    @RequestMapping("/delStudentCourse")
    public String delStudentCourse(Model model, @RequestParam("course_id")String course_id, HttpServletRequest request){
        log.info("退选");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id  = student.getStu_Id();
        studentCourseService.delStudentCourse(stu_id, course_id);
        List<Course> listCourse = courseService.getAllCourse(stu_id);
        model.addAttribute("listCourse", listCourse);
        return "student/getAllCourse";
    }
}
