package com.spring.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.spring.bean.TeacherBean;
@Repository
public interface TeacherBeanMapper {
    int deleteByPrimaryKey(String tno);

    int insert(TeacherBean record);

    int insertSelective(TeacherBean record);

    TeacherBean selectByPrimaryKey(String tno);

    int updateByPrimaryKeySelective(TeacherBean record);

    int updateByPrimaryKey(TeacherBean record);

    List<TeacherBean> list(TeacherBean record);
    
    /**
     * 登录验证
     */
    TeacherBean loginTeacher(TeacherBean record);
}