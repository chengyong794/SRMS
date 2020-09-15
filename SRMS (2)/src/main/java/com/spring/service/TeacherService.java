package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bean.TeacherBean;
import com.spring.dao.TeacherBeanMapper;
import com.spring.service.core.BaseService;

@Service(value = "teacherService")
public class TeacherService implements BaseService<TeacherBean> {
	
	@Autowired
	TeacherBeanMapper teacherDao;
	@Override
	public List<TeacherBean> list(TeacherBean t) {
		// TODO Auto-generated method stub
		return teacherDao.list(new TeacherBean());
	}

	@Override
	public TeacherBean find(String tno) {
		// TODO Auto-generated method stub
		return teacherDao.selectByPrimaryKey(tno);
	}

	@Override
	public int save(TeacherBean t) {
		// TODO Auto-generated method stub
		return teacherDao.insert(t);
	}

	@Override
	public int update(TeacherBean t) {
		// TODO Auto-generated method stub
		return teacherDao.updateByPrimaryKey(t);
	}

	@Override
	public int delete(String tno) {
		// TODO Auto-generated method stub
		return teacherDao.deleteByPrimaryKey(tno);
	}
	
	
}
