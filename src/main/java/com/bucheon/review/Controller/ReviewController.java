package com.bucheon.review.Controller;

import com.bucheon.review.Service.ReviewService;
import com.bucheon.review.VO.ReviewVO;

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
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    //조회
    @GetMapping("/review/list")
    public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<ReviewVO> reviewList = reviewService.selectAllReview();
        ModelAndView mav = new ModelAndView("/review/list");
        mav.addObject("reviewlist",reviewList);
        return mav;
    }
    //삽입
    @GetMapping("/review/insert")
    public ModelAndView getreviewInsert(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView("/review/insert");
        return mav;
    }
    @PostMapping("/review/insert")
    public ModelAndView postreviewInsert(@ModelAttribute("ReviewVO") ReviewVO review, HttpServletResponse response) throws Exception {
        reviewService.insertReview(review);
        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }
    //수정
    @GetMapping("/review/update")
    public ModelAndView getreviewUpdate(@RequestParam("rno") int rno, HttpServletResponse response) throws Exception {
        ReviewVO review = reviewService.selectUpdate(rno);
        ModelAndView mav = new ModelAndView("/review/update");
        mav.addObject("review",review);
        return mav;
    }
    @PostMapping("/review/update")
    public ModelAndView postreviewUpdate(@ModelAttribute("ReviewVO") ReviewVO review, HttpServletResponse response) throws Exception {
        reviewService.updateReview(review);
        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }

    @GetMapping("/review/delete")
    public ModelAndView reviewDelete(@RequestParam("rno") int rno, HttpServletResponse response) throws Exception {
        reviewService.deleteReview(rno);
        ModelAndView mav = new ModelAndView("redirect:/review/list");
        return mav;
    }

}
