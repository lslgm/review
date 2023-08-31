package com.bucheon.review.Service;

import com.bucheon.review.VO.StudentVO;

import java.util.List;


public interface StudentService {

    public List<StudentVO> selectAllStudent() throws Exception;

    public void insertStudent(StudentVO studentVO) throws Exception;

    public StudentVO selectUpdate(int sno) throws Exception;
    public void updateStudent(StudentVO studentVO) throws Exception;

    public void deleteStudent(int sno) throws Exception;
}
