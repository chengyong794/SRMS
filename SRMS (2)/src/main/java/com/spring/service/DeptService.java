package com.spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bean.DeptBean;
import com.spring.dao.DeptBeanMapper;
import com.spring.service.core.BaseService;

@Service("deptService")
public class DeptService implements BaseService<DeptBean> {

	@Autowired
	DeptBeanMapper deptDao;
	@Override
	public List<DeptBean> list(DeptBean t) {
		List<DeptBean> list = null;
		try {
			list = deptDao.list(t);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public DeptBean find(String dno) {
		// TODO Auto-generated method stub
		DeptBean deptBean = null;
		try {
			deptBean = deptDao.selectByPrimaryKey(dno);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return deptBean;
	}

	@Override
	public int save(DeptBean t) {
		// TODO Auto-generated method stub
		int i=0;
		try {
			deptDao.insert(t);
			i=1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			i=0;
		}
		return i;
	}

	@Override
	public int update(DeptBean t) {
		// TODO Auto-generated method stub
		int i=0;
		try {
			deptDao.updateByPrimaryKey(t);
			i=1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			i=0;
		}
		return i;
	}

	@Override
	public int delete(String dno) {
		// TODO Auto-generated method stub
		int i=0;
		try {
			deptDao.deleteByPrimaryKey(dno);
			i=1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			i=0;
		}
		return i;
	}

}
