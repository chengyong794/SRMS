package com.spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bean.DeptBean;
import com.spring.bean.TeacherBean;
import com.spring.dao.DeptBeanMapper;
import com.spring.service.core.BaseService;

@Service("deptService")
public class DeptService implements BaseService<DeptBean> {

	@Autowired
	DeptBeanMapper deptDao;
	@Override
	public List<DeptBean> list(Object obj) {
		List<DeptBean> list = deptDao.list((DeptBean)obj);
		return list;
	}

	@Override
	public DeptBean find(String dno) {
		// TODO Auto-generated method stub
		return deptDao.selectByPrimaryKey(dno);
	}

	@Override
	public int save(DeptBean t) {
		// TODO Auto-generated method stub
		return deptDao.insert(t);
	}

	@Override
	public int update(DeptBean t) {
		// TODO Auto-generated method stub
		return deptDao.updateByPrimaryKey(t);
	}

	@Override
	public int delete(String dno) {
		// TODO Auto-generated method stub
		return deptDao.deleteByPrimaryKey(dno);
	}

	@Override
	public TeacherBean loginTeacher(TeacherBean record) {
		// TODO Auto-generated method stub
		return null;
	}

}
