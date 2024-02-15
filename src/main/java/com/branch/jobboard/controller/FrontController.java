package com.branch.jobboard.controller;

import java.util.Map;
import java.util.HashMap;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.branch.jobboard.controller.info.RedirectInfo;
import com.branch.jobboard.controller.info.UriInfo;
import com.branch.jobboard.controller.util.RedirectUtil;
import com.branch.jobboard.controller.util.RegexUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class FrontController extends HttpServlet{
    
    private Map<String, Controller> handlers;
    private RedirectUtil redirectUtil;
    private RegexUtil regexUtil;


    @Override
    public void init() throws ServletException {
        String charset = this.getInitParameter("charset");

        this.handlers = new HashMap<>();
        this.regexUtil = RegexUtil.getInstance();
        this.redirectUtil = new RedirectUtil(charset);

        this.handlers.put("/", new ControllerImpl("landing"));
        this.handlers.put("/login", new ControllerImpl("login"));
        // TODO 컨트롤러 추가 해야됨.
        
        log.info("{} Servlet 초기화!\n\t└─ Handler Size:{}, charset:{}", 
            this.getServletName(), this.handlers.size(), charset);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getMethod();
        String servletPath = req.getServletPath();
        
        UriInfo uriInfo = regexUtil.urlLastNumber(servletPath);
        Controller controller = this.handlers.get(uriInfo.getUri());
        
        if(controller == null){
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            log.error("Null Controller : {} (lastNo:{})", uriInfo.getUri(), uriInfo.getLastNo());
            return;
        }

        RedirectInfo redirectInfo = null;
        if(method.equalsIgnoreCase("GET")){
            redirectInfo = controller.doGet(req, resp, uriInfo);
        } else if(method.equalsIgnoreCase("POST")){
            redirectInfo = controller.doPost(req, resp, uriInfo);
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_MODIFIED);
            return;
        }

        final int redirectType = redirectInfo.getType();
        if(redirectType == RedirectInfo.FORWARD){
            redirectUtil.forward(req, resp, redirectInfo.getPath());
        } else if(redirectType == RedirectInfo.SEND_JSON){
            redirectUtil.sendJson(resp, redirectInfo.getMap());
        } else if(redirectType == RedirectInfo.REDIRECT){

        } else {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
        log.debug("{}({}) {} ?{}", method, redirectType, servletPath, req.getQueryString());
    }
}
