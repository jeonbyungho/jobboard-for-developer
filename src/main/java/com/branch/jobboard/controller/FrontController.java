package com.branch.jobboard.controller;

import java.util.Map;
import java.util.HashMap;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "FrontController",urlPatterns = "/")
public class FrontController extends HttpServlet{
    
	private String charset;
    private Map<String, Controller> handlers;

    @Override
    public void init() throws ServletException {
    	ServletConfig sc = this.getServletConfig();
        this.charset = sc.getInitParameter("charset");

        this.handlers = new HashMap<>();

        this.handlers.put("/", new ControllerImpl("landing"));
        this.handlers.put("/login", new ControllerImpl("login"));
        
        this.handlers.put("/job/list/", new ControllerImpl("jobpost/jobpost_list"));
        this.handlers.put("/job/write", new ControllerImpl("jobpost/jobpost_form"));
        this.handlers.put("/job/detail/", new ControllerImpl("jobpost/jobpost_detail"));
        // TODO 컨트롤러 추가 해야됨.
        
        log.info("{} Servlet 초기화!\n\t└─ Handler Size:{}, charset:{}", 
            this.getServletName(), this.handlers.size(), charset);
    } 
    	
    private Controller controllerLookup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    	String url = req.getServletPath();
    	int lastIndexNo = url.lastIndexOf("/") + 1;
    	String lastUrl = url.substring(lastIndexNo);
    	
    	if(lastUrl.matches("\\d+")) {
    		url = url.substring(0, lastIndexNo);
    		long urlId = Long.parseLong(lastUrl);
    		req.setAttribute("urlId", urlId);
    	}
    	
    	log.debug("{} {} {}",req.getMethod(), url, req.getAttribute("urlId"));
    	
    	Controller controller = handlers.get(url);
    	if(controller == null) {
    		controller = new EmptyController();
    	}
    	
    	return controller;
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	controllerLookup(req, resp).doGet(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	controllerLookup(req, resp).doPost(req, resp);
    }
}
