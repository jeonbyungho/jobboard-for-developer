package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.controller.action.HttpUtil;

@WebServlet(urlPatterns = {"/article", "/article/*"})
public class ArticleFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pathInfo = req.getPathInfo();
		String path = null;
		System.out.println("ArticleFront : "+ pathInfo);
		System.out.println(req.getRequestURI());
		
		if(pathInfo == null) {
			path = "./resource/article-write.jsp";
		} else if(pathInfo.equals("/list")) {
			
			String page = req.getParameter("page");
			System.out.println(page);
			path = "../resource/article-list.jsp";
			
		} else {
			int num = Integer.parseInt(pathInfo.substring(1));
			req.setAttribute("num", num);
			path = "../resource/article.jsp";
		}
		
		if(path != null) HttpUtil.forward(req, resp, path);
	}
}
