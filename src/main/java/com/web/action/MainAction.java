package com.web.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction extends ExcuteAction{
	
	public MainAction() {
		setPath("./resource/index.jsp");
	}

	@Override
	public ActionFront excute(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		System.out.println("메인 페이지 실행!");
		req.setAttribute("repr", 10);
		req.setAttribute("arti", 12);
		return super.excute(req, resp);
	}
}
