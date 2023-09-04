package com.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.controller.action.HttpUtil;

@WebServlet("")
public class MainFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println(req.getRequestURI());
		
		req.setAttribute("repr", 30);
		req.setAttribute("arti", 40);
		
		String path = "./resource/index.jsp";
		if(path != null) HttpUtil.forward(req, resp, path);
	}
}
