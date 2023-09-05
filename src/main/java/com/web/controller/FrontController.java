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

@WebServlet(urlPatterns = {
		"/",
		"/article/*", "/article/list"})
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
		getActionMap.put("/article", new AriticleAction());
		getActionMap.put("/article/list", new ExcuteAction("../resource/article-list.jsp"));
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("front");
		String reqURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String servletPath = req.getServletPath();
		String pathInfo = req.getPathInfo();
		String query = req.getQueryString();
		System.out.println("URI : " + reqURI);
		System.out.println("Context : " + contextPath);
		System.out.println("Servlet : " + servletPath);
		System.out.println("Info : " + pathInfo);
		System.out.println("Query : " + query);
		super.service(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ActionFront front = null;
		String servletPath = req.getServletPath();
		
		front = (ActionFront) getActionMap.get(servletPath).excute(req, resp);
		if(front == null) return;
		
		String path = front.getPath();
		if(path == null) return;
		
		if(front.isRedirect()) {
			resp.sendRedirect(path);
		} else {
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}