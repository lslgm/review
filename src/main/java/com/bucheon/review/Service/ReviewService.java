package com.bucheon.review.Service;

import com.bucheon.review.VO.ReviewVO;


import java.util.List;

public interface ReviewService {
    public List<ReviewVO> selectAllReview() throws Exception;

    public void insertReview(ReviewVO reviewVO) throws Exception;

    public ReviewVO selectUpdate(int rno) throws Exception;
    public void updateReview(ReviewVO reviewVO) throws Exception;

    public void deleteReview(int rno) throws Exception;
}
