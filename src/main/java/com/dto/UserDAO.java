package com.dto;

import java.util.Map;

public interface UserDAO<T>{
	
	public T login(String name, String password);
	public boolean sigup(Map<String, String> map);
	
}
