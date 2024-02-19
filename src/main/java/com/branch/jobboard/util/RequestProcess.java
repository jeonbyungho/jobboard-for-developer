package com.branch.jobboard.util;

import java.util.Map;
import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class RequestProcess {
    
    public void bodyJson(HttpServletResponse resp, Map<String, Object> map){
        JSONObject json = new JSONObject(map);
        
        try (PrintWriter out = resp.getWriter()){
            out.println(json.toJSONString());
        } catch (IOException e) {
            log.error("Send Json", e);
        }
    }
}
