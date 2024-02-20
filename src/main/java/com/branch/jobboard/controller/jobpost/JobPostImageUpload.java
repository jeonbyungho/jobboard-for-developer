package com.branch.jobboard.controller.jobpost;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.branch.jobboard.controller.Controller;
import com.branch.jobboard.service.ImageProcessService;

public class JobPostImageUpload implements Controller{
	
	private final ImageProcessService imageProcessSec;
	
	public JobPostImageUpload() {
		this.imageProcessSec = ImageProcessService.getInstance();
	}
	
	@Override
	public String doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		return null;
	}
	
	@Override
	public String doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part = req.getPart("image");
		
		ServletContext sc = req.getServletContext();
		HttpSession session = req.getSession();
		
		// 이미지를 저장할 경로
		String imageBasePath = sc.getInitParameter("jobpost_image_path");
		// 웹 어플리케이션의 로컬 경로
		String realPath = sc.getRealPath(imageBasePath);
		// 클라이언트로부터 받은 파일의 이름
		String filename = URLEncoder.encode("img "+part.getSubmittedFileName(), "UTF-8");
		
		// 저장할 파일 경로와 이름
		String filePath = realPath + File.separator + session.getId() + File.separator + filename;
		
		// 이미지 파일 저장
		if(this.imageProcessSec.imageSave(part.getInputStream(), filePath)) {
			// 이미지 파일의 URI 주소를 클라이언트에게 응답합니다.
			return "redirect:/" + filePath.replace(sc.getRealPath("/"), "");
		}
		// 이미지 저장 실패 시 반환 값 없음.
		return null;
	}
}
