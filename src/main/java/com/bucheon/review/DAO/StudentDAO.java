package com.bucheon.review.DAO;

import com.bucheon.review.VO.StudentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface StudentDAO {

    public List<StudentVO> selectAllStudent() throws Exception;

    public void insertStudent(StudentVO studentVO) throws Exception;

   public StudentVO selectUpdate(int sno) throws Exception;
   public void updateStudent(StudentVO studentVO) throws Exception;

   public void deleteStudent(int sno) throws Exception;
}
