package com.bucheon.review.Controller;

import com.bucheon.review.Service.ResultService;
import com.bucheon.review.VO.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ResultController {
    @Autowired
    ResultService resultService;
    @GetMapping("/result/listform")
    public ModelAndView getresultList(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView("/result/listform");
        return mav;
    }
    //조회
    @GetMapping  ("/result/resultlist")
    public ModelAndView resultList(@RequestParam("sno") int sno, HttpServletResponse response) throws Exception {
        List<ResultVO> result = resultService.selectAllResult(sno);
        ModelAndView mav = new ModelAndView("/result/list");
        mav.addObject("result",result);
        return mav;
    }

}
