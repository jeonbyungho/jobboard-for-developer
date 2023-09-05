package com.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.action.*;

@WebServlet(urlPatterns = {"/"})
public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	// String ServletPath, ActionFront
	Map<String, Action> getActionMap = new HashMap<String, Action>();
	
	@Override
	public void init() throws ServletException {
		super.init();
		getActionMap.put("/", new MainAction());
		getActionMap.put("/member/login", new ExcuteAction("../resource/login.jsp"));
		getActionMap.put("/member/join", new ExcuteAction("../resource/join.jsp"));
		getActionMap.put("/company/login", new ExcuteAction("../resource/join.jsp"));
		getActionMap.put("/company/join", new ExcuteAction("../resource/join.jsp"));
		getActionMap.put("/article", new ExcuteAction("./resource/article-write.jsp"));
		getActionMap.put("/article/list", new ExcuteAction("../resource/article-list.jsp"));
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String reqURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String servletPath = req.getServletPath();
		String pathInfo = req.getPathInfo();
		System.out.println("URI : " + reqURI);
		System.out.println("Context : " + contextPath);
		System.out.println("Servlet : " + servletPath);
		System.out.println("Info : " + pathInfo);
		super.service(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ActionFront front = null;
		String servletPath = req.getServletPath();
		String pathInfo = req.getPathInfo();
		
		front = (ActionFront)getActionMap.get(servletPath).excute(req, resp);
		if(front == null) return;
		
		if(front.isRedirect()) {
			resp.sendRedirect(front.getPath());
		} else {
			req.getRequestDispatcher(front.getPath()).forward(req, resp);
		}
	}
}
