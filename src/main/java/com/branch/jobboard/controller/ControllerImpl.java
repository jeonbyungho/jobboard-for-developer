package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.util.RequestProcess;

public class ControllerImpl implements Controller{
    protected String viewName;
    
    public ControllerImpl(String viewName){
        this.viewName = viewName;
    }
    
    public ControllerImpl(){
    	this("");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	RequestProcess rp = (RequestProcess) req.getServletContext().getAttribute("requestProcess");
    	rp.forward(req, resp, viewName);
    }
    
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.sendError(HttpServletResponse.SC_NOT_FOUND);
    }
}
