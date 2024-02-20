package com.branch.jobboard.controller.jobpost;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.Controller;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class JobPostWriteController implements Controller{
	
	private String viewName;
	
	public JobPostWriteController() {
		this.viewName = "jobpost/jobpost_form";
	}
	
	@Override
	public String doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		return this.viewName;
	}

	@Override
	public String doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String content = req.getParameter("content");
		return postWrite(req, content);
	}
	
	private String postWrite(HttpServletRequest req, String content) {
		log.debug(content);
		return "";
	}
}
