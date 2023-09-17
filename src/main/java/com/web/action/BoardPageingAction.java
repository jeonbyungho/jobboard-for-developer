package com.web.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.dao.BoardDAO;

public abstract class BoardPageingAction extends ExcuteAction{
	
	final int _pageSize;
	final int _pageSizeDo;
	
	public BoardPageingAction(int size) {
		_pageSize = size;
		_pageSizeDo = _pageSize * _pageSize;
	}
	
	public BoardPageingAction() {
		this(10);
	}
	
	// 페이지 번호 읽어오기
	protected int getPage(HttpServletRequest req, String name) {
		String reqPage = req.getParameter(name);
		int page = (reqPage == null)? 1 : Integer.parseInt(reqPage);
		return page;
	}
	
	protected int getPage(HttpServletRequest req) {
		return this.getPage(req, "page");
	}
	
	// 게시판 목록 불러오기
	protected List<?> getList(
			HttpServletRequest req, 
			BoardDAO<?> bdao, 
			Map<String, Object> map, 
			int page) {
		
		// 게시판 페이징
		final int totalCount = bdao.totalCount(map);
		
		int startPage = (page - 1) / _pageSizeDo + 1;
		int endPage = startPage + _pageSize + 1;
		endPage = (totalCount < endPage) ? totalCount : endPage;
		
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		
		// 게시판 불러오기 (DB)
		int endRow = page * _pageSize;
		int startRow = endRow - (_pageSize - 1);
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return bdao.getList(map);
	}
}
