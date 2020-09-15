package com.spring.dao;

import com.spring.bean.PatentSoftSealBean;

public interface PatentSoftSealBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(PatentSoftSealBean record);

    int insertSelective(PatentSoftSealBean record);

    PatentSoftSealBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(PatentSoftSealBean record);

    int updateByPrimaryKey(PatentSoftSealBean record);
}