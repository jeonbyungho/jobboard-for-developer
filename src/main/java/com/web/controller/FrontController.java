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
	Map<String, Action> postActionMap = new HashMap<String, Action>();
	
	@Override
	public void init() throws ServletException {
		super.init();
		// 요청 방식 GET
		getActionMap.put("/", new MainAction());
		
		getActionMap.put("/member/login", new ExcuteAction("../resource/page/login/login.jsp"));
		getActionMap.put("/member/signup", new ExcuteAction("../resource/page/login/signup.jsp"));
		getActionMap.put("/member/logout", new MemberLogoutAction());
		
		getActionMap.put("/signup", new ExcuteAction("./resource/page/login/signup2.jsp"));
		
		getActionMap.put("/member/resume", new ExcuteAction("../resource/page/member/resume.jsp"));
		
		getActionMap.put("/company/login", new ExcuteAction("../resource/page/login/login.jsp"));
		getActionMap.put("/company/signup", new ExcuteAction("../resource/page/login/signup.jsp"));
		
		getActionMap.put("/article", new ArticleAction());
		getActionMap.put("/article/list", new ArticleListAction());
		
		getActionMap.put("/member/mypage", new ExcuteAction("../resource/page/member/mypage.jsp"));
		getActionMap.put("/company/mypage", new ExcuteAction("../resource/page/member/mypage.jsp"));
		
		// 요청 방식 POST
		postActionMap.put("/member/login", new MemberLoginAction(true));
		postActionMap.put("/member/signup", new MemberSingupAction(true));
		postActionMap.put("/member/resume", new ResumeWriteAction());
		
		postActionMap.put("/company/login", new MemberLoginAction(false));
		postActionMap.put("/company/signup", new MemberSingupAction(false));
		
		postActionMap.put("/article", new ArticleInsertAction());
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doGET");
		doProcess(req, resp, getActionMap);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doPOST");
		doProcess(req, resp, postActionMap);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp, Map<String, Action> actionMap)
			throws ServletException, IOException{
		ActionFront front = null;
		String servletPath = req.getServletPath();
		
		front = (ActionFront) actionMap.get(servletPath).excute(req, resp);
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
