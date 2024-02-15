package com.branch.jobboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.info.RedirectInfo;
import com.branch.jobboard.controller.info.UriInfo;

public interface Controller {
    public RedirectInfo doGet(HttpServletRequest req, HttpServletResponse resp, UriInfo uriInfo) throws ServletException, IOException;
    public RedirectInfo doPost(HttpServletRequest req, HttpServletResponse resp, UriInfo uriInfo) throws ServletException, IOException;
}
