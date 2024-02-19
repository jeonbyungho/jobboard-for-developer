package com.branch.jobboard.controller;

import java.util.Map;
import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class RequestProcess {

	private static RequestProcess instance;
	
    private final String VIEW_DIR = "/WEB-INF/view/";
    private final String VIEW_TYPE = ".jsp";
    
    public static RequestProcess getInstance() {
    	if(instance == null) {
    		instance = new RequestProcess();
    	}
    	return instance;
    }

    public void forward(HttpServletRequest req, HttpServletResponse resp, String view) throws ServletException, IOException {
    	String viewPath = this.VIEW_DIR + view + this.VIEW_TYPE;
    	req.getServletContext().getRequestDispatcher(viewPath).forward(req, resp);
    }
    
    public void redirect(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException{
    	resp.sendRedirect(path);
    }
    
    public void bodyJson(HttpServletResponse resp, Map<String, Object> map, String charset){
        resp.setCharacterEncoding(charset);
        
        JSONObject json = new JSONObject(map);
        
        try (PrintWriter out = resp.getWriter()){
            out.println(json.toJSONString());
        } catch (IOException e) {
            log.error("Send Json", e);
        }
    }
}
