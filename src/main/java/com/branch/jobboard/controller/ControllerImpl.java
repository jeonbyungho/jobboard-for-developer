package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerImpl implements Controller{
    protected String viewName;
    
    public ControllerImpl(String viewName){
        this.viewName = viewName;
    }
    
    public ControllerImpl(){
    	this(null);
    }

    @Override
    public String doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	return this.viewName;
    }
    
    @Override
    public String doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	return null;
    }
}
