package com.spring.dao;

import com.spring.bean.AnnuaBonusBean;
import com.spring.bean.AnnuaBonusBeanKey;

public interface AnnuaBonusBeanMapper {
    int deleteByPrimaryKey(AnnuaBonusBeanKey key);

    int insert(AnnuaBonusBean record);

    int insertSelective(AnnuaBonusBean record);

    AnnuaBonusBean selectByPrimaryKey(AnnuaBonusBeanKey key);

    int updateByPrimaryKeySelective(AnnuaBonusBean record);

    int updateByPrimaryKey(AnnuaBonusBean record);
}