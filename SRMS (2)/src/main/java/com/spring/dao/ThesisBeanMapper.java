package com.spring.dao;

import com.spring.bean.ThesisBean;

public interface ThesisBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(ThesisBean record);

    int insertSelective(ThesisBean record);

    ThesisBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(ThesisBean record);

    int updateByPrimaryKey(ThesisBean record);
}