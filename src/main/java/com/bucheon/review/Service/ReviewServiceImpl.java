package com.bucheon.review.Service;

import com.bucheon.review.DAO.ReviewDAO;
import com.bucheon.review.VO.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService{

    @Autowired
    public ReviewDAO reviewDao;
    public List<ReviewVO> selectAllReview() throws Exception{
        return reviewDao.selectAllReview();
    }

    public void insertReview(ReviewVO reviewVO) throws Exception {
        reviewDao.insertReview(reviewVO);

    }

    public ReviewVO selectUpdate(int rno) throws Exception{
        return  reviewDao.selectUpdate(rno);
    }
    public void updateReview(ReviewVO reviewVO) throws Exception{
        reviewDao.updateReview(reviewVO);
    }

    public void deleteReview(int rno) throws Exception{
        reviewDao.deleteReview(rno);
    }
}
