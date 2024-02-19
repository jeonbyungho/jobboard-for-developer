package com.branch.jobboard.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.branch.jobboard.util.Tuple;
import com.branch.jobboard.util.UrlPatternUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebFilter(filterName = "urlPatternMatchFilter")
public class UrlPatternMatchFilter implements Filter{
	
	private UrlPatternUtil util;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		ServletContext sc = filterConfig.getServletContext();
		this.util = (UrlPatternUtil) sc.getAttribute("urlPatternUtil");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String url = req.getServletPath();
		Tuple<String, List<Object>> urlPattern = util.patternMatch(url);
		
		req.setAttribute("url", urlPattern.getX());
		req.setAttribute("urlInfo", urlPattern.getY());
		
		log.debug(util.patternMatch(url).toString());
		chain.doFilter(request, response);
	}
}
