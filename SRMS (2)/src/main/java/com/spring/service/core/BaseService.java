package com.spring.service.core;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.bean.TeacherBean;

@Service
public interface BaseService<T> {
	public List<T> list(Object obj);
	public T find(String id);
	public int save(T t);
	public int update(T t);
	public int delete(String id);
    /**
     * 登录验证
     */
    TeacherBean loginTeacher(TeacherBean record);
}
