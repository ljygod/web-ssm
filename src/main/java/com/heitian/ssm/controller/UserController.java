package com.heitian.ssm.controller;

import com.heitian.ssm.model.Administrator;
import com.heitian.ssm.model.Student;
import com.heitian.ssm.model.Teacher;
import com.heitian.ssm.model.User;
import com.heitian.ssm.service.AdminService;
import com.heitian.ssm.service.StudentService;
import com.heitian.ssm.service.TeacherService;
import com.heitian.ssm.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Ljy on 2017/7/1.
 */
@Controller
@Scope("session")
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;
    @Resource
    private StudentService studentService;
    @Resource
    private TeacherService teacherService;
    @Resource
    private AdminService adminService;

    @RequestMapping("/selectUserById")
    public String selectUserById(@Param("user_id") String user_id, @Param("user_password") String user_password, HttpServletRequest request, Model model) {
        log.info("登录");
        User user = userService.getUserById(user_id);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        log.info(user.getUser_Auth());
        if (!user.getUser_Password().equals(user_password)) {
            return "loginerror";
        }

        if (user.getUser_Auth().equals("学生")) {
            Student student = studentService.selectStudentById(user.getUse_Id());
            model.addAttribute("student", student);
            session = request.getSession();
            session.setAttribute("student", student);
            return "student/studentIndex";
        }
        if (user.getUser_Auth().equals("老师")) {
            Teacher teacher = teacherService.selectTeacherById(user.getUse_Id());
            model.addAttribute("teacher", teacher);
            session = request.getSession();
            session.setAttribute("teacher", teacher);
            return "teacher/teacherIndex";
//            return "student/studentIndex";
        }
        if (user.getUser_Auth().equals("管理员")) {
            Administrator administrator = adminService.getAdminById(user.getUse_Id());
            model.addAttribute("admin", administrator);
            session = request.getSession();
            session.setAttribute("admin", administrator);
            return "admin/adminIndex";
        }

        return "login";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpServletRequest request){

        HttpSession session = request.getSession();
        session.invalidate();
        return "login";
    }

    @RequestMapping("/updateUser")
    public String updateUser(@RequestParam("password")String password, Model model, HttpServletRequest request){
        log.info("update student password");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String user_id = user.getUse_Id();
        userService.updateUser(user_id, password);
        session.invalidate();
        return "login";
    }
}
