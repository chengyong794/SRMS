package com.spring.dao;

import com.spring.bean.TreatiseBean;

public interface TreatiseBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(TreatiseBean record);

    int insertSelective(TreatiseBean record);

    TreatiseBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TreatiseBean record);

    int updateByPrimaryKey(TreatiseBean record);
}