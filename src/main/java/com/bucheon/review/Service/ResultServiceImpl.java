package com.bucheon.review.Service;

import com.bucheon.review.DAO.ResultDAO;
import com.bucheon.review.VO.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResultServiceImpl implements  ResultService{
    @Autowired
    public ResultDAO resultDao;

    public List<ResultVO> selectAllResult(int sno) throws Exception{
        return resultDao.selectAllResult(sno);
    }
}
