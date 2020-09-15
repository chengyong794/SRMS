package com.spring.service.core;

import java.util.List;
import java.util.Map;

public interface BaseService<T> {
	public List<T> list(T t);
	public T find( String id);
	public int save(T t);
	public int update(T t);
	public int delete(String id);
}
