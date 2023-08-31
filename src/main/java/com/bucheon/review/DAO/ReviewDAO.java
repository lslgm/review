package com.bucheon.review.DAO;

import com.bucheon.review.VO.ReviewVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface ReviewDAO {

    public List<ReviewVO> selectAllReview() throws Exception;

    public void insertReview(ReviewVO reviewVO) throws Exception;

    public ReviewVO selectUpdate(int rno) throws Exception;
    public void updateReview(ReviewVO reviewVO) throws Exception;

    public void deleteReview(int rno) throws Exception;
}
