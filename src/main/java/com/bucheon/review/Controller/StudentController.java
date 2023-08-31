package com.bucheon.review.Controller;

import com.bucheon.review.Service.StudentService;
import com.bucheon.review.VO.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;
    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView("/index");
        return mav;
    }
    //조회
    @GetMapping("/student/list")
    public ModelAndView studentList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<StudentVO> studentList = studentService.selectAllStudent();
        ModelAndView mav = new ModelAndView("/student/list");
        mav.addObject("studentlist",studentList);
        return mav;
    }
    //삽입
    @GetMapping("/student/insert")
    public ModelAndView getstudentInsert(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView("/student/insert");
        return mav;
    }
    @PostMapping("/student/insert")
    public ModelAndView poststudentInsert(@ModelAttribute("studentVO") StudentVO student, HttpServletResponse response) throws Exception {
        studentService.insertStudent(student);
        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }
    //수정
    @GetMapping("/student/update")
    public ModelAndView getstudentUpdate(@RequestParam("sno") int sno, HttpServletResponse response) throws Exception {
        StudentVO student = studentService.selectUpdate(sno);
        ModelAndView mav = new ModelAndView("/student/update");
        mav.addObject("student",student);
        return mav;
    }
    @PostMapping("/student/update")
    public ModelAndView poststudentUpdate(@ModelAttribute("StudentVO") StudentVO student, HttpServletResponse response) throws Exception {
        studentService.updateStudent(student);
        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }

    @GetMapping("/student/delete")
    public ModelAndView studentDelete(@RequestParam("sno") int sno, HttpServletResponse response) throws Exception {
        studentService.deleteStudent(sno);
        ModelAndView mav = new ModelAndView("redirect:/student/list");
        return mav;
    }
    
}
