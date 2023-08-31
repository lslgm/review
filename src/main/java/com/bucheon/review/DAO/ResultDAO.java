package com.bucheon.review.DAO;

import com.bucheon.review.VO.ResultVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ResultDAO {

    public List<ResultVO> selectAllResult(int sno) throws Exception;

}
