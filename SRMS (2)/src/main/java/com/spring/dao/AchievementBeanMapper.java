package com.spring.dao;

import com.spring.bean.AchievementBean;

public interface AchievementBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(AchievementBean record);

    int insertSelective(AchievementBean record);

    AchievementBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(AchievementBean record);

    int updateByPrimaryKey(AchievementBean record);
}