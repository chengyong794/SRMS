package com.spring.dao;

import java.util.List;
import java.util.Map;

import com.spring.bean.DeptBean;

public interface DeptBeanMapper {
    int deleteByPrimaryKey(String dno);

    int insert(DeptBean record);

    int insertSelective(DeptBean record);

    DeptBean selectByPrimaryKey(String dno);

    int updateByPrimaryKeySelective(DeptBean record);

    int updateByPrimaryKey(DeptBean record);
    
    public List<DeptBean> list(DeptBean dept);
}