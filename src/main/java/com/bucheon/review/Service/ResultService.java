package com.bucheon.review.Service;

import com.bucheon.review.VO.ResultVO;

import java.util.List;

public interface ResultService {
    public List<ResultVO> selectAllResult(int sno) throws Exception;
}
