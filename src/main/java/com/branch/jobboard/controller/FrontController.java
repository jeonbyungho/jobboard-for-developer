package com.branch.jobboard.controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import com.branch.jobboard.controller.jobpost.JobPostWriteController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "frontController", urlPatterns = "/")
public class FrontController extends AbstractFrontController{
	
    @Override
    public void init() throws ServletException {
        super.init();
        ServletContext sc = this.getServletContext();
    	
        this.handlers.put(sc.getInitParameter("landing"), new ControllerImpl("landing"));
        this.handlers.put(sc.getInitParameter("member_login"), new ControllerImpl("login"));
        this.handlers.put("/job/list/", new ControllerImpl("jobpost/jobpost_list"));
        this.handlers.put(sc.getInitParameter("jobpost_write"), new JobPostWriteController());
        this.handlers.put(sc.getInitParameter("jobpost_detail"), new ControllerImpl("jobpost/jobpost_detail"));
        // TODO 컨트롤러 추가 해야됨.
        
        log.info("{} Servlet 초기화!\n\t└─ Handler Size:{}, charset:{}", 
            this.getServletName(), this.handlers.size());
    }
}
