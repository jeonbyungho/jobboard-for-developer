package com.dao;

import java.util.Map;

import com.dto.UserDTO;

public interface UserDAO<T extends UserDTO>{
	
	public T login(String name, String password);
	public boolean sigup(Map<String, String> map);
	
}
