package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.controller.action.HttpUtil;

@WebServlet(urlPatterns = "/member/*")
public class CompanyFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pathInfo = req.getPathInfo();
		String path = null;
		
		System.out.println("MemberFront : "+pathInfo);
		System.out.println(req.getRequestURI());
		
		switch(pathInfo) {
		case "/login":
			path = "../resource/login.jsp";
			break;
		case "/join":
			path = "../resource/join.jsp";
			break;
		}
		
		if(path != null) HttpUtil.forward(req, resp, path);
		
	}
}
