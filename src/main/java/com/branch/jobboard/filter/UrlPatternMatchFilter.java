package com.branch.jobboard.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.branch.jobboard.util.Tuple;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "urlPatternMatchFilter")
public class UrlPatternMatchFilter implements Filter{
	
	public Tuple<String, List<Object>> patternMatch(String url){
		List<String> chagePaths = new ArrayList<String>();
		List<Object> matchDatas = new ArrayList<Object>();
		
		if(url.equals("/")) {
			return new Tuple<String, List<Object>>(url, matchDatas);
		}
		
		String[] paths = url.split("/");
		
		for(String str: paths) {
			if(str.matches("^\\d+$")) {
				chagePaths.add("{no}");
				matchDatas.add(Long.parseLong(str));
			}
			else {
				chagePaths.add(str);
			}
		}
		
		return new Tuple<String, List<Object>>(String.join("/", chagePaths), matchDatas);
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String url = req.getServletPath();
		Tuple<String, List<Object>> urlPattern = patternMatch(url);
		
		req.setAttribute("url", urlPattern.getX());
		req.setAttribute("urlInfo", urlPattern.getY());
		
		log.debug(urlPattern.toString());
		chain.doFilter(request, response);
	}
}
