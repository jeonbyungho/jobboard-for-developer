package com.dao;

import java.util.List;
import java.util.Map;

public interface BoardDAO<L>{
	public List<L> getList(Map<String, ?> parameter);
	
	public int totalCount(Map<String, ?> parameter);
}
