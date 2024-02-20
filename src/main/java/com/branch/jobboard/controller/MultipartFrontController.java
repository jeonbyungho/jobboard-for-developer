package com.branch.jobboard.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import com.branch.jobboard.controller.jobpost.JobPostImageUpload;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "multipartFrontController", urlPatterns = {
		"/job/write/image"
})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
	maxFileSize = 1024 * 1024 * 10,
	maxRequestSize = 1024 * 1024 * 50)
public class MultipartFrontController extends AbstractFrontController{
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		this.handlers.put("/job/write/image", new JobPostImageUpload());
	}
}
