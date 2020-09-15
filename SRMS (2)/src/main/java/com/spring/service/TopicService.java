package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bean.TopicBean;
import com.spring.dao.TopicBeanMapper;
import com.spring.service.core.BaseService;

@Service(value = "topicService")
public class TopicService implements BaseService<TopicBean> {
	
	@Autowired
	TopicBeanMapper topicDao;
	@Override
	public List<TopicBean> list(TopicBean t) {
		// TODO Auto-generated method stub
		return topicDao.list(new TopicBean());
	}

	@Override
	public TopicBean find(String tno) {
		// TODO Auto-generated method stub
		return topicDao.selectByPrimaryKey(tno);
	}

	@Override
	public int save(TopicBean t) {
		// TODO Auto-generated method stub
		return topicDao.insert(t);
	}

	@Override
	public int update(TopicBean t) {
		// TODO Auto-generated method stub
		return topicDao.updateByPrimaryKey(t);
	}

	@Override
	public int delete(String tno) {
		// TODO Auto-generated method stub
		return topicDao.deleteByPrimaryKey(tno);
	}
	
	
}
