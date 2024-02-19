package com.branch.jobboard.controller;

import java.util.Map;
import java.util.HashMap;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.jobpost.JobPostWriteController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "frontController", urlPatterns = "/")
public class FrontController extends HttpServlet{
    
    private Map<String, Controller> handlers;

    @Override
    public void init() throws ServletException {
    	ServletContext sc = this.getServletContext();
        this.handlers = new HashMap<>();

        this.handlers.put(sc.getInitParameter("landing"), new ControllerImpl("landing"));
        this.handlers.put(sc.getInitParameter("member_login"), new ControllerImpl("login"));
        this.handlers.put("/job/list/", new ControllerImpl("jobpost/jobpost_list"));
        this.handlers.put(sc.getInitParameter("jobpost_write"), new JobPostWriteController());
        this.handlers.put(sc.getInitParameter("jobpost_detail"), new ControllerImpl("jobpost/jobpost_detail"));
        // TODO 컨트롤러 추가 해야됨.
        
        log.info("{} Servlet 초기화!\n\t└─ Handler Size:{}, charset:{}", 
            this.getServletName(), this.handlers.size());
    } 
    	
    private Controller controllerLookup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    	String url = (String) req.getAttribute("url");
    	Controller controller = handlers.get(url);
    	return controller != null ? controller : new EmptyController();
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
