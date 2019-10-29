package com.heitian.ssm.controller;

import com.heitian.ssm.model.Student;
import com.heitian.ssm.model.Teacher;
import com.heitian.ssm.model.User;
import com.heitian.ssm.service.StudentService;
import com.heitian.ssm.service.TeacherService;
import com.heitian.ssm.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Ljy on 2017/7/5.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private UserService userService;
    @Resource
    private StudentService studentService;
    @Resource
    private TeacherService teacherService;
    private Logger logger = Logger.getLogger(AdminController.class);
    @RequestMapping("/showAllStudent")
    public String getAllStudent(HttpServletRequest request, Model model) {
        logger.info("显示所有学生信息");
        List<Student> listStudent = studentService.getAllStudent();
        model.addAttribute("listStudent", listStudent);
        return "admin/studentList";
    }

    @RequestMapping("/getAllTeacher")
    public String getAllTeacher(Model model){

        logger.info("显示所有老师信息");
        List<Teacher>teacherList = teacherService.getAllTeacher();
        model.addAttribute("teacherList",teacherList);
        return "admin/teacherList";
    }

    @RequestMapping("/getStudentById")
    public String getStudentById(Model model, @RequestParam("stu_id")String stu_id){
        logger.info("查询老师信息");
        Student student = studentService.selectStudentById(stu_id);
        model.addAttribute("student", student);
        return "admin/selectStudentMessage";
    }

    @RequestMapping("/getTeacherById")
    public String getTeachreById(Model model, @RequestParam("teacher_id")String teacher_id){
        logger.info("查询教师信息");
        Teacher teacher = teacherService.selectTeacherById(teacher_id);
        model.addAttribute("teacher", teacher);
        return "admin/selectTeacherMessage";
    }

    @RequestMapping("/addTeacher")
    public String addTeacher(Model model, @Param("teacher_id") String teacher_id, @Param("teacher_name")String teacher_name, @Param("teacher_sex")String teacher_sex,
                             @Param("teacher_age")int teacher_age, @Param("teacher_email")String teacher_email
            , @Param("teacher_phone")String teacher_phone, @Param("teacher_position")String teacher_position,
                             @Param("major_id")String major_id, @Param("teacher_nation")String teacher_nation){
        logger.info("增加教师");
        teacherService.addTeacher(teacher_id,teacher_name,teacher_sex,teacher_age,teacher_email,teacher_phone,teacher_position,major_id, teacher_nation);
        return "admin/addTeacher";
    }

    @RequestMapping("/addStudent")
    public String addStudent(Model model,@Param("stu_id")String stu_id,@Param("stu_name")String stu_name,@Param("stu_sex")String stu_sex,
                             @Param("stu_age")String stu_age,@Param("stu_phone")String stu_phone,@Param("stu_email")String stu_email,
                             @Param("stu_nation")String stu_nation,@Param("class_id")String class_id){
        logger.info("增加学生");
        studentService.addStudent(stu_id,stu_name,stu_sex,stu_age,stu_phone,stu_email,stu_nation,class_id);
        return "admin/addStudent";
    }

    @RequestMapping("/showAllUser")
    public ModelAndView showAllUser(){
        logger.info("所有账户信息");
        List<User> userList = userService.showAllUser();
        ModelAndView mv = new ModelAndView("admin/showAllUser");
        mv.addObject("userList", userList);
        return mv;
    }

    @RequestMapping("/delUser")
    public ModelAndView delUser(@RequestParam("u_id")String u_id){
       // showAllUser();
        logger.info("删除用户");
        logger.info(u_id);
        userService.delUser(u_id);
        List<User> userList = userService.showAllUser();
        ModelAndView mv = new ModelAndView("admin/showAllUser");
        mv.addObject("userList", userList);
        return mv;
//        showAllUser();
    }

    @RequestMapping("/addUser")
    public void addUser(@RequestParam("u_id")String u_id,@RequestParam("u_auth")String u_auth){
        logger.info(u_id);
        logger.info(u_auth);
        userService.addUser(u_id,u_id,u_auth);
        showAllUser();
    }

}
