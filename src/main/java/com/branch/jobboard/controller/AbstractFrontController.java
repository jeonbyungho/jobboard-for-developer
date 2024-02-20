package com.branch.jobboard.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public abstract class AbstractFrontController extends HttpServlet{
	
	/** View 파일들의 경로 */
	private final String VIEW_DIR = "/WEB-INF/view/";
	/** View 파일의 확장자 */
    private final String VIEW_TYPE = ".jsp";
    /** Controller의 메서드 반환 값으로부터 리디렉션 여부를 판별하기 위한 키워드 */
    private final String REDIRECT_PROFIX = "redirect:";
    
    /** Controller 모음 */
    protected Map<String, Controller> handlers;
    
    @Override
    public void init() throws ServletException {
        this.handlers = new HashMap<>();
    }
    
    /** URL에 따라 알맞은 컨트롤러를 찾아내고 요청을 처리합니다. */
    protected Controller controllerLookup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    	// UrlPatternMatchFilter으로 얻어낸 url값으로 알맞은 컨트롤러를 Map에서 찾아냅니다.
    	String url = (String) req.getAttribute("url");
    	Controller controller = handlers.get(url);
    	return controller != null ? controller : new ControllerImpl();
    }
    
    /** Controller가 요청에 대한 처리를 마친 뒤, 요청을 재지정을 처리하기 위한 메서드 */
    protected void doProcess(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException{
    	// 경로가 null인 경우 상태코드 404 전송합니다.
    	if(path == null) {
    		resp.sendError(HttpServletResponse.SC_NOT_FOUND);
    		return;
    	}
    	// 경로가 빈 문자열이라면 요청 지정을 하지 않습니다.
    	else if(path.isEmpty()) {	return; }
    	
    	// path = "redirect:URL" -> 지정한 URL으로 리디렉션
    	if(path.startsWith(this.REDIRECT_PROFIX)) {
    		resp.sendRedirect(path.replace(this.REDIRECT_PROFIX, ""));
    		return;
    	}
    	
    	// path = "jsp 파일 이름" -> 지정한 jsp를 포워드
    	String viewPath = this.VIEW_DIR + path + this.VIEW_TYPE;
    	req.getServletContext().getRequestDispatcher(viewPath).forward(req, resp);
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String path = controllerLookup(req, resp).doGet(req, resp);
    	doProcess(req, resp, path);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String path = controllerLookup(req, resp).doPost(req, resp);
    	doProcess(req, resp, path);
    }
}
