package com.spring.dao;

import java.util.List;

import com.spring.bean.TopicBean;

public interface TopicBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(TopicBean record);

    int insertSelective(TopicBean record);

    TopicBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TopicBean record);

    int updateByPrimaryKey(TopicBean record);
    
    List<TopicBean> list(TopicBean record);
}