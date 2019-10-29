package com.heitian.ssm.controller;

import com.heitian.ssm.model.Teacher;
import com.heitian.ssm.service.TeacherService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Ljy on 2017/7/4.
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    Logger log = Logger.getLogger(TeacherController.class);
    @Resource
    private TeacherService teacherService;

    @RequestMapping("/selectTeacherById")
    public String selectTeacherById(HttpServletRequest request, Model model, @Param("teacher_id") String teacher_id) {
        log.info("使用ID查看信息");
        log.info(teacher_id);
        Teacher teacher = teacherService.selectTeacherById(teacher_id);
        model.addAttribute("teacher", teacher);
        return "teacher/showTeacherMessage";
    }

    @RequestMapping("/updateTeacherMessage")
    public String updateTeacherMessage(HttpServletRequest request, Model model, @Param("teacher_email") String teacher_email, @Param("teacher_id") String teacher_id
            , @Param("teacher_phone") String teacher_phone) {

        log.info("更新学生信息");
        log.info(teacher_id);
        log.info(teacher_phone);
        log.info(teacher_email);
        teacherService.updateTeacherMessage(teacher_phone, teacher_email, teacher_id);
        Teacher teacher = teacherService.selectTeacherById(teacher_id);
        model.addAttribute("teacher", teacher);
        return "teacher/showTeacherMessage";
    }
}
