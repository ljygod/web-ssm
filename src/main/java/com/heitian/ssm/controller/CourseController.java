package com.heitian.ssm.controller;

import com.heitian.ssm.model.Course;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.service.CourseService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Ljy on 2017/7/4.
 */


@Controller
@RequestMapping("/course")
public class CourseController {
    private Logger log = Logger.getLogger(CourseController.class);
    @Resource
    private CourseService courseService;

    @RequestMapping("/getAllCourse")
    public String getAllCourse(@Param("stu_id") String stu_id, HttpServletRequest request, Model model) {
        log.info("显示所有课程信息");
        log.info(stu_id);
        List<Course> listCourse = courseService.getAllCourse(stu_id);
        model.addAttribute("listCourse", listCourse);
        return "student/getAllCourse";
    }

    @RequestMapping("/selectCourseByTeacherId")
    public String selectCourseByTeacherId(@Param("teacher_id") String teacher_id, Model model, HttpServletRequest request) {
        log.info("显示教授所有课程的信息");
        List<Course> courseList = courseService.getCourseByTeacherId(teacher_id);
        model.addAttribute("courseList", courseList);
        return "teacher/showTeacherCourse";
    }

    @RequestMapping("/allCourse")
    public String showAllCourse(Model model){
        log.info("得到所有课程信息");
        List<Course> courseList = courseService.allCourse();
        model.addAttribute("courseList", courseList);
        return "admin/showAllCourse";
    }

    @RequestMapping("/addCourse")
    public String addCourse(Model model,@Param("course_id") String course_id,@Param("course_name") String course_name,@Param("course_credit") Float course_credit,
                            @Param("course_time") Integer course_time,@Param("teacher_id") String teacher_id){
        log.info("add course");
        courseService.addCoure(course_id,course_name,course_credit,course_time,teacher_id);
        log.info("得到所有课程信息");
        List<Course> courseList = courseService.allCourse();
        model.addAttribute("courseList", courseList);
        return "admin/showAllCourse";
    }

    @RequestMapping("/showAllNotSelectCourse")
    public String showAllNotSelectCourse(Model model, HttpServletRequest request){
        log.info("show all not select course");
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String stu_id = student.getStu_Id();
        log.info(stu_id);
        List<Course> courseList = courseService.allNotSelectCourse(stu_id);
        model.addAttribute("courseList", courseList);
        return "student/showAllNotSelectCourse";
    }

}
