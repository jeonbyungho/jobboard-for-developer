package com.branch.jobboard.controller.util;

import java.util.Map;
import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class RedirectUtil {

    private final String VIEW_DIR = "/WEB-INF/view/";
    private final String VIEW_FILETYPE = ".jsp";
    private String charset;

    public RedirectUtil(String charset){
        this.charset = charset;
    }

    public void forward(HttpServletRequest req, HttpServletResponse resp, String view) throws ServletException, IOException {
        try {
            req.getServletContext().getRequestDispatcher(this.VIEW_DIR + view + this.VIEW_FILETYPE).forward(req, resp);
        } catch(Exception e){
            log.error("Forward path:'{}'", view, e);
        }
    }

    public void sendJson(HttpServletResponse resp, Map<String, Object> map){
        resp.setCharacterEncoding(this.charset);
        
        JSONObject json = new JSONObject(map);
        
        try (PrintWriter out = resp.getWriter()){
            out.println(json.toJSONString());
        } catch (IOException e) {
            log.error("Send Json", e);
        }
    }
}
