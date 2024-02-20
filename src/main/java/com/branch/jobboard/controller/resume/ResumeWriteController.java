package com.branch.jobboard.controller.resume;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.Controller;

public class ResumeWriteController implements Controller{
	
	private String viewName;
	
	public ResumeWriteController() {
		this.viewName = "resume/resume_form";
	}
	
	@Override
	public String doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return viewName;
	}
	
	@Override
	public String doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}
}
