package com.bucheon.review.Service;

import com.bucheon.review.DAO.StudentDAO;
import com.bucheon.review.VO.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentServiceImpl implements  StudentService{
    @Autowired
    StudentDAO studentDao;
    @Override
    public List<StudentVO> selectAllStudent() throws Exception {
        return studentDao.selectAllStudent();
    }

    @Override
    public void insertStudent(StudentVO studentVO) throws Exception{
        studentDao.insertStudent(studentVO);
    }

    public StudentVO selectUpdate(int sno) throws Exception{
        return  studentDao.selectUpdate(sno);
    }
    public void updateStudent(StudentVO studentVO) throws Exception{
        studentDao.updateStudent(studentVO);
    }

    public void deleteStudent(int sno) throws Exception{
        studentDao.deleteStudent(sno);
    }

}
