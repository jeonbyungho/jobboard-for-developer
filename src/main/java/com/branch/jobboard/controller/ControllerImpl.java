package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerImpl implements Controller{
    protected String viewName;
    protected final RequestProcess requestProcess;
    
    public ControllerImpl(String viewName){
        this.viewName = viewName;
        this.requestProcess = RequestProcess.getInstance();
    }
    
    public ControllerImpl(){
    	this("");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	this.requestProcess.forward(req, resp, viewName);
    }
    
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.sendError(HttpServletResponse.SC_NOT_FOUND);
    }
}
