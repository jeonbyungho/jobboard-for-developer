package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.info.RedirectInfo;
import com.branch.jobboard.controller.info.UriInfo;

public class ControllerImpl implements Controller{
    protected String viewName;
    
    public ControllerImpl(){}

    public ControllerImpl(String viewName){
        this.viewName = viewName;
    }

    @Override
    public RedirectInfo doGet(HttpServletRequest req, HttpServletResponse resp, UriInfo uriInfo) throws ServletException, IOException {
        return new RedirectInfo(viewName, RedirectInfo.FORWARD);
    }

    @Override
    public RedirectInfo doPost(HttpServletRequest req, HttpServletResponse resp, UriInfo uriInfo) throws ServletException, IOException {
        return new RedirectInfo(viewName, RedirectInfo.FORWARD);
    }
}
